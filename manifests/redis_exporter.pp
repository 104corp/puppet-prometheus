# Class: prometheus::redis_exporter
#
# This module manages prometheus node redis_exporter
#
# Parameters:
#  [*arch*]
#  Architecture (amd64 or i386)
#

#  [*bin_dir*]
#  Directory where binaries are located
#
#  [*addr*]
#  Array of address of one or more redis nodes. Defaults to redis://localhost:6379
#
#  [*download_extension*]
#  Extension for the release binary archive
#
#  [*download_url*]
#  Complete URL corresponding to the where the release binary archive can be downloaded
#
#  [*download_url_base*]
#  Base URL for the binary archive
#
#  [*extra_groups*]
#  Extra groups to add the binary user to
#
#  [*extra_options*]
#  Extra options added to the startup command
#  For a full list of the exporter's supported extra options
#  please refer to https://github.com/oliver006/redis_exporter
#
#  [*group*]
#  Group under which the binary is running
#
#  [*init_style*]
#  Service startup scripts style (e.g. rc, upstart or systemd)
#
#  [*install_method*]
#  Installation method: url or package (only url is supported currently)
#
#  [*manage_group*]
#  Whether to create a group for or rely on external code for that
#
#  [*manage_service*]
#  Should puppet manage the service? (default true)
#
#  [*manage_user*]
#  Whether to create user or rely on external code for that
#
#  [*namespace*]
#  Namespace for the metrics, defaults to `redis`.
#
#  [*os*]
#  Operating system (linux is the only one supported)
#
#  [*package_ensure*]
#  If package, then use this for package ensure default 'latest'
#
#  [*package_name*]
#  The binary package name - not available yet
#
#  [*purge_config_dir*]
#  Purge config files no longer generated by Puppet
#
#  [*restart_on_change*]
#  Should puppet restart the service on configuration change? (default true)
#
#  [*service_enable*]
#  Whether to enable the service from puppet (default true)
#
#  [*service_ensure*]
#  State ensured for the service (default 'running')
#
#  [*service_name*]
#  Name of the node exporter service (default 'redis_exporter')
#
#  [*user*]
#  User which runs the service
#
#  [*version*]
#  The binary release version

class prometheus::redis_exporter (
  Array[String] $addr,
  Optional[String] $custom_download_url_base,
  String $download_extension,
  String $download_url_base,
  Array[String] $extra_groups,
  String $group,
  String $package_ensure,
  String $package_name,
  String $user,
  String $version,
  Boolean $purge_config_dir      = true,
  Boolean $restart_on_change     = true,
  Boolean $service_enable        = true,
  String $service_ensure         = 'running',
  String $service_name           = 'redis_exporter',
  String $init_style             = $prometheus::init_style,
  String $install_method         = $prometheus::install_method,
  Boolean $manage_group          = true,
  Boolean $manage_service        = true,
  Boolean $manage_user           = true,
  String $namespace              = 'redis',
  String $os                     = $prometheus::os,
  String $extra_options          = '',
  Optional[String] $download_url = undef,
  String $arch                   = $prometheus::real_arch,
  String $bin_dir                = $prometheus::bin_dir,
) inherits prometheus {

  $release = "v${version}"

  if $custom_download_url_base {
    $real_download_url = $custom_download_url_base
  }
  else {
    $real_download_url = pick($download_url, "${download_url_base}/download/${release}/${package_name}-${release}.${os}-${arch}.${download_extension}")
  }

  $notify_service = $restart_on_change ? {
    true    => Service[$service_name],
    default => undef,
  }

  $str_addresses = join($addr, ',')
  $options = "-redis.addr=${str_addresses} -namespace=${namespace} ${extra_options}"

  if $install_method == 'url' {
    # Not a big fan of copypasting but prometheus::daemon takes for granted
    # a specific path embedded in the prometheus *_exporter tarball, which
    # redis_exporter lacks.
    # TODO: patch prometheus::daemon to support custom extract directories
    $exporter_install_method = 'none'
    $install_dir = "/opt/${service_name}-${version}.${os}-${arch}"
    file { $install_dir:
      ensure => 'directory',
      owner  => 'root',
      group  => 0, # 0 instead of root because OS X uses "wheel".
      mode   => '0555',
    }
    -> archive { "/tmp/${service_name}-${version}.${download_extension}":
      ensure          => present,
      extract         => true,
      extract_path    => $install_dir,
      source          => $real_download_url,
      checksum_verify => false,
      creates         => "${install_dir}/${service_name}",
      cleanup         => true,
    }
    -> file { "${bin_dir}/${service_name}":
      ensure => link,
      notify => $notify_service,
      target => "${install_dir}/${service_name}",
      before => Prometheus::Daemon[$service_name],
    }
  } else {
    $exporter_install_method = $install_method
  }

  prometheus::daemon { $service_name:
    install_method     => $exporter_install_method,
    version            => $version,
    download_extension => $download_extension,
    os                 => $os,
    arch               => $arch,
    bin_dir            => $bin_dir,
    notify_service     => $notify_service,
    package_name       => $package_name,
    package_ensure     => $package_ensure,
    manage_user        => $manage_user,
    user               => $user,
    extra_groups       => $extra_groups,
    real_download_url  => $real_download_url,
    group              => $group,
    manage_group       => $manage_group,
    purge              => $purge_config_dir,
    options            => $options,
    init_style         => $init_style,
    service_ensure     => $service_ensure,
    service_enable     => $service_enable,
    manage_service     => $manage_service,
  }
}
