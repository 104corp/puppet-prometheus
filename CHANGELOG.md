# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## v7.1.2

- add facter `node_exporter_version`

## v7.1.1

- add init_style support `redhat` type.

## v7.0.1

- fix alerts data type fail from [Error when installing Prometheus server #252](https://github.com/voxpupuli/puppet-prometheus/issues/252)

## v7.0.0

- add http_proxy support to install server and exporter.

## [v6.2.0](https://github.com/voxpupuli/puppet-prometheus/tree/v6.2.0) (2018-08-02)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v6.1.0...v6.2.0)

**Implemented enhancements:**

- add postgres exporter [\#236](https://github.com/voxpupuli/puppet-prometheus/pull/236) ([blupman](https://github.com/blupman))
- add ubuntu 18.04 support [\#235](https://github.com/voxpupuli/puppet-prometheus/pull/235) ([bastelfreak](https://github.com/bastelfreak))

**Fixed bugs:**

- $rule\_files parameter not respected  [\#180](https://github.com/voxpupuli/puppet-prometheus/issues/180)
- enhance acceptance tests / dont quote web.external-url param [\#245](https://github.com/voxpupuli/puppet-prometheus/pull/245) ([bastelfreak](https://github.com/bastelfreak))
- 180 rule files param [\#241](https://github.com/voxpupuli/puppet-prometheus/pull/241) ([bramblek1](https://github.com/bramblek1))

**Merged pull requests:**

- extra spec tests for redis\_exporter [\#237](https://github.com/voxpupuli/puppet-prometheus/pull/237) ([blupman](https://github.com/blupman))

## [v6.1.0](https://github.com/voxpupuli/puppet-prometheus/tree/v6.1.0) (2018-07-29)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v6.0.6...v6.1.0)

**Implemented enhancements:**

- use web.external-url configuration [\#233](https://github.com/voxpupuli/puppet-prometheus/pull/233) ([tuxmea](https://github.com/tuxmea))

**Fixed bugs:**

- Debian init script for prometheus daemon doesn't implement 'reload'  [\#240](https://github.com/voxpupuli/puppet-prometheus/issues/240)

**Closed issues:**

- web.external-url [\#232](https://github.com/voxpupuli/puppet-prometheus/issues/232)

**Merged pull requests:**

- revert eff8dad2 - dont update bundler during travis runs [\#239](https://github.com/voxpupuli/puppet-prometheus/pull/239) ([bastelfreak](https://github.com/bastelfreak))

## [v6.0.6](https://github.com/voxpupuli/puppet-prometheus/tree/v6.0.6) (2018-07-04)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v6.0.5...v6.0.6)

**Fixed bugs:**

- Redirect SDTERR to SDTOUT for logfile [\#223](https://github.com/voxpupuli/puppet-prometheus/pull/223) ([mkrakowitzer](https://github.com/mkrakowitzer))
- fix notify $service\_name in the alertmanager [\#222](https://github.com/voxpupuli/puppet-prometheus/pull/222) ([thde](https://github.com/thde))

**Closed issues:**

- haproxy\_exporter New flag handling \> 0.8 [\#227](https://github.com/voxpupuli/puppet-prometheus/issues/227)

## [v6.0.5](https://github.com/voxpupuli/puppet-prometheus/tree/v6.0.5) (2018-06-23)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v6.0.4...v6.0.5)

**Fixed bugs:**

- The real\_download\_url in process-exporter manifest doesn't match to newer versions [\#212](https://github.com/voxpupuli/puppet-prometheus/issues/212)
- fix support for process\_exporter 0.2.0 and newer [\#220](https://github.com/voxpupuli/puppet-prometheus/pull/220) ([tuxmea](https://github.com/tuxmea))

## [v6.0.4](https://github.com/voxpupuli/puppet-prometheus/tree/v6.0.4) (2018-06-21)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v6.0.3...v6.0.4)

**Merged pull requests:**

- bump archive upper version boundary to \<4.0.0 [\#218](https://github.com/voxpupuli/puppet-prometheus/pull/218) ([bastelfreak](https://github.com/bastelfreak))

## [v6.0.3](https://github.com/voxpupuli/puppet-prometheus/tree/v6.0.3) (2018-06-21)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v6.0.2...v6.0.3)

**Fixed bugs:**

- use service name for redis\_exporter to prevent multiple downloads of redis\_exporter [\#216](https://github.com/voxpupuli/puppet-prometheus/pull/216) ([blupman](https://github.com/blupman))

**Closed issues:**

- redis\_exporter is downloaded every puppet run [\#215](https://github.com/voxpupuli/puppet-prometheus/issues/215)

## [v6.0.2](https://github.com/voxpupuli/puppet-prometheus/tree/v6.0.2) (2018-06-19)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v6.0.1...v6.0.2)

**Fixed bugs:**

- Remove double quotes from source\_labels value with gsub [\#213](https://github.com/voxpupuli/puppet-prometheus/pull/213) ([sebastianrakel](https://github.com/sebastianrakel))

## [v6.0.1](https://github.com/voxpupuli/puppet-prometheus/tree/v6.0.1) (2018-06-12)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v6.0.0...v6.0.1)

**Fixed bugs:**

- Prometheus service wont run if installed from package [\#62](https://github.com/voxpupuli/puppet-prometheus/issues/62)
- start-stop scripts get vars from prometheus::server scope [\#210](https://github.com/voxpupuli/puppet-prometheus/pull/210) ([edevreede](https://github.com/edevreede))
- use lookup instead of puppet variable in data [\#209](https://github.com/voxpupuli/puppet-prometheus/pull/209) ([tuxmea](https://github.com/tuxmea))
- upgrade stdlib dependancy to minium 4.25.0 [\#207](https://github.com/voxpupuli/puppet-prometheus/pull/207) ([blupman](https://github.com/blupman))

**Closed issues:**

- stdlib dependancy should be updated to 4.25 [\#206](https://github.com/voxpupuli/puppet-prometheus/issues/206)

## [v6.0.0](https://github.com/voxpupuli/puppet-prometheus/tree/v6.0.0) (2018-06-01)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v5.0.0...v6.0.0)

**Breaking changes:**

- Install prometheus server via own class [\#194](https://github.com/voxpupuli/puppet-prometheus/pull/194) ([bastelfreak](https://github.com/bastelfreak))

**Implemented enhancements:**

- allow to set prometheus server config filename [\#200](https://github.com/voxpupuli/puppet-prometheus/pull/200) ([bastelfreak](https://github.com/bastelfreak))
- Add Graphite exporter [\#191](https://github.com/voxpupuli/puppet-prometheus/pull/191) ([bastelfreak](https://github.com/bastelfreak))
- Convert to data-in-modules [\#178](https://github.com/voxpupuli/puppet-prometheus/pull/178) ([bastelfreak](https://github.com/bastelfreak))
- Add Debian 9 support [\#176](https://github.com/voxpupuli/puppet-prometheus/pull/176) ([bastelfreak](https://github.com/bastelfreak))
- Add Datatypes to all parameters [\#175](https://github.com/voxpupuli/puppet-prometheus/pull/175) ([bastelfreak](https://github.com/bastelfreak))
- simplify init handling with service\_provider fact [\#173](https://github.com/voxpupuli/puppet-prometheus/pull/173) ([bastelfreak](https://github.com/bastelfreak))
- Add Archlinux support [\#172](https://github.com/voxpupuli/puppet-prometheus/pull/172) ([bastelfreak](https://github.com/bastelfreak))
- add varnish\_exporter [\#171](https://github.com/voxpupuli/puppet-prometheus/pull/171) ([blupman](https://github.com/blupman))

**Fixed bugs:**

- Wrong installation method on archlinux [\#195](https://github.com/voxpupuli/puppet-prometheus/issues/195)
- Wrong architecture used on CentOS 64bit for exporters [\#192](https://github.com/voxpupuli/puppet-prometheus/issues/192)
- fix hiera key {prometheus\_,}install\_method on arch [\#196](https://github.com/voxpupuli/puppet-prometheus/pull/196) ([bastelfreak](https://github.com/bastelfreak))
- use correct architecture variable from init.pp in exporters [\#193](https://github.com/voxpupuli/puppet-prometheus/pull/193) ([bastelfreak](https://github.com/bastelfreak))
- change default inhibit\_rules to reflect previous params.pp config [\#181](https://github.com/voxpupuli/puppet-prometheus/pull/181) ([blupman](https://github.com/blupman))

**Closed issues:**

- node\_exporterd defaults to older version [\#188](https://github.com/voxpupuli/puppet-prometheus/issues/188)
- node exporter also installs prometheus server on monitored node [\#184](https://github.com/voxpupuli/puppet-prometheus/issues/184)
- alertmanager default inhibit\_rules error [\#182](https://github.com/voxpupuli/puppet-prometheus/issues/182)

**Merged pull requests:**

- Update node\_exporter default version 0.14.0 -\> 0.15.2 [\#204](https://github.com/voxpupuli/puppet-prometheus/pull/204) ([blupman](https://github.com/blupman))
- migrate more default values to hiera [\#201](https://github.com/voxpupuli/puppet-prometheus/pull/201) ([bastelfreak](https://github.com/bastelfreak))
- dont use single class reference in an array [\#199](https://github.com/voxpupuli/puppet-prometheus/pull/199) ([bastelfreak](https://github.com/bastelfreak))
- fix typos in the README.md [\#198](https://github.com/voxpupuli/puppet-prometheus/pull/198) ([bastelfreak](https://github.com/bastelfreak))
- migrate server related classes to private scope [\#197](https://github.com/voxpupuli/puppet-prometheus/pull/197) ([bastelfreak](https://github.com/bastelfreak))
- Rely on beaker-hostgenerator for docker nodesets [\#190](https://github.com/voxpupuli/puppet-prometheus/pull/190) ([ekohl](https://github.com/ekohl))
- switch from topscope to class scope for variables [\#189](https://github.com/voxpupuli/puppet-prometheus/pull/189) ([bastelfreak](https://github.com/bastelfreak))
- extend README.md [\#177](https://github.com/voxpupuli/puppet-prometheus/pull/177) ([bastelfreak](https://github.com/bastelfreak))
- drop legacy debian 7 [\#174](https://github.com/voxpupuli/puppet-prometheus/pull/174) ([bastelfreak](https://github.com/bastelfreak))
- allow camptocamp/systemd 2.X [\#170](https://github.com/voxpupuli/puppet-prometheus/pull/170) ([bastelfreak](https://github.com/bastelfreak))

## [v5.0.0](https://github.com/voxpupuli/puppet-prometheus/tree/v5.0.0) (2018-02-26)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v4.1.1...v5.0.0)

**Breaking changes:**

- Feature/multiple rules files [\#166](https://github.com/voxpupuli/puppet-prometheus/pull/166) ([zipkid](https://github.com/zipkid))

**Merged pull requests:**

- Fix small typo in hiera example [\#164](https://github.com/voxpupuli/puppet-prometheus/pull/164) ([bearnard](https://github.com/bearnard))

## [v4.1.1](https://github.com/voxpupuli/puppet-prometheus/tree/v4.1.1) (2018-02-18)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v4.1.0...v4.1.1)

**Fixed bugs:**

- puppetlabs/stdlib dependency appears to be 4.20.0 and not 4.13.1  [\#161](https://github.com/voxpupuli/puppet-prometheus/issues/161)
- raise stdlib version dependency [\#162](https://github.com/voxpupuli/puppet-prometheus/pull/162) ([tuxmea](https://github.com/tuxmea))

**Merged pull requests:**

- release 4.1.1 [\#163](https://github.com/voxpupuli/puppet-prometheus/pull/163) ([bastelfreak](https://github.com/bastelfreak))

## [v4.1.0](https://github.com/voxpupuli/puppet-prometheus/tree/v4.1.0) (2018-02-14)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v4.0.0...v4.1.0)

**Implemented enhancements:**

- Add support for rabbitmq\_exporter [\#149](https://github.com/voxpupuli/puppet-prometheus/issues/149)
- Added redis\_exporter module [\#157](https://github.com/voxpupuli/puppet-prometheus/pull/157) ([yackushevas](https://github.com/yackushevas))
- Add rabbitmq exporter [\#153](https://github.com/voxpupuli/puppet-prometheus/pull/153) ([costela](https://github.com/costela))
- add envvars support to daemon [\#151](https://github.com/voxpupuli/puppet-prometheus/pull/151) ([costela](https://github.com/costela))
- adding remote\_write support [\#144](https://github.com/voxpupuli/puppet-prometheus/pull/144) ([gangsta](https://github.com/gangsta))

**Fixed bugs:**

- Alert rule validation error [\#143](https://github.com/voxpupuli/puppet-prometheus/issues/143)
- Facter error on older distributions \(Ubuntu Trusty\) [\#142](https://github.com/voxpupuli/puppet-prometheus/issues/142)
- bug: alert rules are still 1.0 syntax for Prometheus 2 [\#120](https://github.com/voxpupuli/puppet-prometheus/issues/120)
- \[minor\] change default alerts to empty hash [\#152](https://github.com/voxpupuli/puppet-prometheus/pull/152) ([costela](https://github.com/costela))

**Closed issues:**

- Add ability to set environment variables for daemons [\#150](https://github.com/voxpupuli/puppet-prometheus/issues/150)

**Merged pull requests:**

- release 4.1.0 [\#159](https://github.com/voxpupuli/puppet-prometheus/pull/159) ([bastelfreak](https://github.com/bastelfreak))
- update blackbox\_exporter.pp inline documentation [\#155](https://github.com/voxpupuli/puppet-prometheus/pull/155) ([tobald](https://github.com/tobald))
- Ruby 1.8 compatibility \(Agent-side\) [\#146](https://github.com/voxpupuli/puppet-prometheus/pull/146) ([sathieu](https://github.com/sathieu))
- Fail silently when service is not installed [\#145](https://github.com/voxpupuli/puppet-prometheus/pull/145) ([vladgh](https://github.com/vladgh))
- Add support for snmp\_exporter [\#125](https://github.com/voxpupuli/puppet-prometheus/pull/125) ([sathieu](https://github.com/sathieu))
- new feature - consul\_exporter [\#36](https://github.com/voxpupuli/puppet-prometheus/pull/36) ([pjfbashton](https://github.com/pjfbashton))

## [v4.0.0](https://github.com/voxpupuli/puppet-prometheus/tree/v4.0.0) (2018-01-04)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v3.1.0...v4.0.0)

**Breaking changes:**

- Bump dependencies [\#124](https://github.com/voxpupuli/puppet-prometheus/pull/124) ([juniorsysadmin](https://github.com/juniorsysadmin))
- Add validation to config changes [\#122](https://github.com/voxpupuli/puppet-prometheus/pull/122) ([costela](https://github.com/costela))

**Implemented enhancements:**

- Install Promtool [\#31](https://github.com/voxpupuli/puppet-prometheus/issues/31)
- add explicit parameter for retention [\#137](https://github.com/voxpupuli/puppet-prometheus/pull/137) ([costela](https://github.com/costela))
- Feature/alerts prometheus2 [\#127](https://github.com/voxpupuli/puppet-prometheus/pull/127) ([jhooyberghs](https://github.com/jhooyberghs))

**Fixed bugs:**

- not up to date dependencies: puppetlabs-stdlib should be \>= 4.13.0 [\#123](https://github.com/voxpupuli/puppet-prometheus/issues/123)
- prometheus systemd wants and depends "multi-user.target" [\#139](https://github.com/voxpupuli/puppet-prometheus/pull/139) ([bastelfreak](https://github.com/bastelfreak))
- daemon: explicitly pass provider to service [\#133](https://github.com/voxpupuli/puppet-prometheus/pull/133) ([costela](https://github.com/costela))

**Closed issues:**

- Minor: add explicit retention option? [\#136](https://github.com/voxpupuli/puppet-prometheus/issues/136)
- node\_exporter: "Could not find init script for node\_exporter" [\#132](https://github.com/voxpupuli/puppet-prometheus/issues/132)
- Usage of `puppet` in custom alertmanager fact breaks if puppet not in $PATH \(e.g. systemd service\) [\#130](https://github.com/voxpupuli/puppet-prometheus/issues/130)

**Merged pull requests:**

- Use puppet internals to determine the state of the alert\_manager [\#131](https://github.com/voxpupuli/puppet-prometheus/pull/131) ([vStone](https://github.com/vStone))
- Correct typo in documentation header for node\_exporter [\#121](https://github.com/voxpupuli/puppet-prometheus/pull/121) ([jhooyberghs](https://github.com/jhooyberghs))

## [v3.1.0](https://github.com/voxpupuli/puppet-prometheus/tree/v3.1.0) (2017-11-26)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v3.0.0...v3.1.0)

**Implemented enhancements:**

- add support for remote\_read [\#109](https://github.com/voxpupuli/puppet-prometheus/pull/109) ([lobeck](https://github.com/lobeck))
- messagebird/beanstalkd\_exporter support [\#105](https://github.com/voxpupuli/puppet-prometheus/pull/105) ([TomaszUrugOlszewski](https://github.com/TomaszUrugOlszewski))
- Add support for mesos exporter [\#59](https://github.com/voxpupuli/puppet-prometheus/pull/59) ([tahaalibra](https://github.com/tahaalibra))

**Fixed bugs:**

- Unable to use this module on fresh alert manager instances [\#55](https://github.com/voxpupuli/puppet-prometheus/issues/55)
- older versions of puppet don't know about the --to\_yaml option [\#119](https://github.com/voxpupuli/puppet-prometheus/pull/119) ([tuxmea](https://github.com/tuxmea))
- prometheus systemd needs network-online and started after multi-user. [\#117](https://github.com/voxpupuli/puppet-prometheus/pull/117) ([tuxmea](https://github.com/tuxmea))
- Disable line wrapping when converting full\_config to yaml.  [\#104](https://github.com/voxpupuli/puppet-prometheus/pull/104) ([benpollardcts](https://github.com/benpollardcts))
- verify whether alert\_manager is running [\#101](https://github.com/voxpupuli/puppet-prometheus/pull/101) ([tuxmea](https://github.com/tuxmea))

**Closed issues:**

- Error: Could not parse application options: invalid option: --to\_yaml [\#118](https://github.com/voxpupuli/puppet-prometheus/issues/118)
- Flaky Acceptance Tests in TravisCI [\#114](https://github.com/voxpupuli/puppet-prometheus/issues/114)
- Update release on forge.puppetlabs.com [\#107](https://github.com/voxpupuli/puppet-prometheus/issues/107)

**Merged pull requests:**

- replace all Variant\[Undef.. with Optional\[... [\#103](https://github.com/voxpupuli/puppet-prometheus/pull/103) ([TheMeier](https://github.com/TheMeier))
- Tests for prometheus::daemon [\#87](https://github.com/voxpupuli/puppet-prometheus/pull/87) ([sathieu](https://github.com/sathieu))

## [v3.0.0](https://github.com/voxpupuli/puppet-prometheus/tree/v3.0.0) (2017-10-31)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v2.0.0...v3.0.0)

**Breaking changes:**

- node\_exporter 0.15.0 compatibiity [\#72](https://github.com/voxpupuli/puppet-prometheus/pull/72) ([TheMeier](https://github.com/TheMeier))

**Implemented enhancements:**

- Running puppet restarts service [\#37](https://github.com/voxpupuli/puppet-prometheus/issues/37)
- manage systemd unit files with camptocamp/systemd [\#90](https://github.com/voxpupuli/puppet-prometheus/pull/90) ([bastelfreak](https://github.com/bastelfreak))
- add basic acceptance tests; fix wrong service handling in Ubuntu 14.04 [\#86](https://github.com/voxpupuli/puppet-prometheus/pull/86) ([bastelfreak](https://github.com/bastelfreak))
- Fix restart\_on\_change and add tests to Class\[prometheus\] [\#83](https://github.com/voxpupuli/puppet-prometheus/pull/83) ([sathieu](https://github.com/sathieu))
- add feature blackbox exporter [\#74](https://github.com/voxpupuli/puppet-prometheus/pull/74) ([bramblek1](https://github.com/bramblek1))
- Add nginx-vts-exporter [\#71](https://github.com/voxpupuli/puppet-prometheus/pull/71) ([viq](https://github.com/viq))
- Add pushgateway [\#68](https://github.com/voxpupuli/puppet-prometheus/pull/68) ([mdebruyn-trip](https://github.com/mdebruyn-trip))
- Support prometheus \>= 2.0 [\#48](https://github.com/voxpupuli/puppet-prometheus/pull/48) ([sathieu](https://github.com/sathieu))

**Fixed bugs:**

- Blackbox\_exporter manifest erroneously uses -config.file instead of --config.file parameter [\#96](https://github.com/voxpupuli/puppet-prometheus/issues/96)
- Service resource in `prometheus::daemon` does not depend on `init\_style` dependent service description [\#94](https://github.com/voxpupuli/puppet-prometheus/issues/94)
- Wrong service reload command on ubuntu 14.04 [\#89](https://github.com/voxpupuli/puppet-prometheus/issues/89)
- blackbox exporters source\_labels must be unquoted [\#98](https://github.com/voxpupuli/puppet-prometheus/pull/98) ([tuxmea](https://github.com/tuxmea))
- add service notification to systemd and sysv [\#95](https://github.com/voxpupuli/puppet-prometheus/pull/95) ([tuxmea](https://github.com/tuxmea))
- Fix isssue with node\_exporter containing empty pid on RHEL6. [\#88](https://github.com/voxpupuli/puppet-prometheus/pull/88) ([mkrakowitzer](https://github.com/mkrakowitzer))

**Closed issues:**

- node\_expoerter v0.15.0 [\#70](https://github.com/voxpupuli/puppet-prometheus/issues/70)
- Tag 1.0.0 [\#47](https://github.com/voxpupuli/puppet-prometheus/issues/47)
- Default Node Exporter Collectors [\#33](https://github.com/voxpupuli/puppet-prometheus/issues/33)
- Minor nitpick [\#1](https://github.com/voxpupuli/puppet-prometheus/issues/1)

**Merged pull requests:**

- use double dash for blackbox exporter options [\#97](https://github.com/voxpupuli/puppet-prometheus/pull/97) ([tuxmea](https://github.com/tuxmea))
- Improve readability of README [\#93](https://github.com/voxpupuli/puppet-prometheus/pull/93) ([roidelapluie](https://github.com/roidelapluie))
- Switch systemd restart from always to on-failure [\#92](https://github.com/voxpupuli/puppet-prometheus/pull/92) ([bastelfreak](https://github.com/bastelfreak))
- Alertmanager global config should be a hash not an array [\#91](https://github.com/voxpupuli/puppet-prometheus/pull/91) ([attachmentgenie](https://github.com/attachmentgenie))
- Test content params of File resources in Class\[prometheus\] [\#84](https://github.com/voxpupuli/puppet-prometheus/pull/84) ([sathieu](https://github.com/sathieu))
- drop legacy validate\_bool calls [\#82](https://github.com/voxpupuli/puppet-prometheus/pull/82) ([bastelfreak](https://github.com/bastelfreak))
- replace validate\_\* with datatypes in statsd\_exporter [\#81](https://github.com/voxpupuli/puppet-prometheus/pull/81) ([bastelfreak](https://github.com/bastelfreak))
- bump puppet version dependency to at least 4.7.1 [\#80](https://github.com/voxpupuli/puppet-prometheus/pull/80) ([bastelfreak](https://github.com/bastelfreak))
- replace validate\_\* with datatypes in mysqld\_exporter [\#79](https://github.com/voxpupuli/puppet-prometheus/pull/79) ([bastelfreak](https://github.com/bastelfreak))
- replace validate\_\* with datatypes in process\_exporter [\#78](https://github.com/voxpupuli/puppet-prometheus/pull/78) ([bastelfreak](https://github.com/bastelfreak))
- replace validate\_\* with datatypes in haproxy\_exporter [\#77](https://github.com/voxpupuli/puppet-prometheus/pull/77) ([bastelfreak](https://github.com/bastelfreak))
- replace validate\_\* with datatypes in alertmanager [\#76](https://github.com/voxpupuli/puppet-prometheus/pull/76) ([bastelfreak](https://github.com/bastelfreak))
- replace validate\_\* with datatypes in init [\#75](https://github.com/voxpupuli/puppet-prometheus/pull/75) ([bastelfreak](https://github.com/bastelfreak))
- use Optional instead of Variant\[Undef... [\#73](https://github.com/voxpupuli/puppet-prometheus/pull/73) ([TheMeier](https://github.com/TheMeier))

## [v2.0.0](https://github.com/voxpupuli/puppet-prometheus/tree/v2.0.0) (2017-10-12)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/1.0.0...v2.0.0)

**Breaking changes:**

- release 2.0.0 [\#66](https://github.com/voxpupuli/puppet-prometheus/pull/66) ([bastelfreak](https://github.com/bastelfreak))
- Add elasticsearch exporter. Drop Puppet 3 support. [\#51](https://github.com/voxpupuli/puppet-prometheus/pull/51) ([rbestbmj](https://github.com/rbestbmj))

**Implemented enhancements:**

- Bump versions for archive and puppet dependency/support puppet5 [\#65](https://github.com/voxpupuli/puppet-prometheus/pull/65) ([bastelfreak](https://github.com/bastelfreak))
- Add tests for elasticsearch\_exporter and update a bit [\#64](https://github.com/voxpupuli/puppet-prometheus/pull/64) ([salekseev](https://github.com/salekseev))
- Allow uncompressed daemons [\#53](https://github.com/voxpupuli/puppet-prometheus/pull/53) ([sathieu](https://github.com/sathieu))
- Add mongodb\_exporter [\#46](https://github.com/voxpupuli/puppet-prometheus/pull/46) ([salekseev](https://github.com/salekseev))

**Fixed bugs:**

- $DAEMON info is only available for the prometheus daemon [\#50](https://github.com/voxpupuli/puppet-prometheus/pull/50) ([sathieu](https://github.com/sathieu))

**Closed issues:**

- Upgrade to Puppet4? [\#34](https://github.com/voxpupuli/puppet-prometheus/issues/34)

**Merged pull requests:**

- Remove systemd module dependency and fix missing path for a exec [\#58](https://github.com/voxpupuli/puppet-prometheus/pull/58) ([juliantaylor](https://github.com/juliantaylor))
- Update README.md [\#56](https://github.com/voxpupuli/puppet-prometheus/pull/56) ([steinbrueckri](https://github.com/steinbrueckri))
- Use default collectors if "collectors" param is empty [\#49](https://github.com/voxpupuli/puppet-prometheus/pull/49) ([sathieu](https://github.com/sathieu))
- Feature/cleanup and document [\#44](https://github.com/voxpupuli/puppet-prometheus/pull/44) ([jhooyberghs](https://github.com/jhooyberghs))
- Reload config [\#43](https://github.com/voxpupuli/puppet-prometheus/pull/43) ([vide](https://github.com/vide))
- Add param service\_name to node\_exporter class [\#40](https://github.com/voxpupuli/puppet-prometheus/pull/40) ([bastelfreak](https://github.com/bastelfreak))
- backport changes to upstream [\#39](https://github.com/voxpupuli/puppet-prometheus/pull/39) ([bastelfreak](https://github.com/bastelfreak))

## [1.0.0](https://github.com/voxpupuli/puppet-prometheus/tree/1.0.0) (2017-03-26)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v1.0.0...1.0.0)

## [v1.0.0](https://github.com/voxpupuli/puppet-prometheus/tree/v1.0.0) (2017-03-26)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v0.2.4...v1.0.0)

## [v0.2.4](https://github.com/voxpupuli/puppet-prometheus/tree/v0.2.4) (2017-03-13)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v0.2.3...v0.2.4)

## [v0.2.3](https://github.com/voxpupuli/puppet-prometheus/tree/v0.2.3) (2017-03-12)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v0.2.1...v0.2.3)

## [v0.2.1](https://github.com/voxpupuli/puppet-prometheus/tree/v0.2.1) (2017-02-04)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v0.2.2...v0.2.1)

## [v0.2.2](https://github.com/voxpupuli/puppet-prometheus/tree/v0.2.2) (2017-01-31)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v0.2.0...v0.2.2)

**Closed issues:**

- alertmanager systemd service doesnt start [\#28](https://github.com/voxpupuli/puppet-prometheus/issues/28)

**Merged pull requests:**

- node-exporter have a 'v' in the release name since 0.13.0 [\#29](https://github.com/voxpupuli/puppet-prometheus/pull/29) ([NairolfL](https://github.com/NairolfL))

## [v0.2.0](https://github.com/voxpupuli/puppet-prometheus/tree/v0.2.0) (2016-12-27)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v0.1.14...v0.2.0)

**Closed issues:**

- Allow to configure scrape options by file [\#17](https://github.com/voxpupuli/puppet-prometheus/issues/17)
- Generate tag. [\#12](https://github.com/voxpupuli/puppet-prometheus/issues/12)
- Extend Readme [\#7](https://github.com/voxpupuli/puppet-prometheus/issues/7)
- Prometheus Rule Files [\#6](https://github.com/voxpupuli/puppet-prometheus/issues/6)
- Prometheus Logging to file [\#5](https://github.com/voxpupuli/puppet-prometheus/issues/5)

**Merged pull requests:**

- Add Statsd Exporter, Mysqld Exporter, make exporters generic [\#27](https://github.com/voxpupuli/puppet-prometheus/pull/27) ([lswith](https://github.com/lswith))
- adding class to create alerts [\#24](https://github.com/voxpupuli/puppet-prometheus/pull/24) ([snubba](https://github.com/snubba))

## [v0.1.14](https://github.com/voxpupuli/puppet-prometheus/tree/v0.1.14) (2016-11-11)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/v0.1.13...v0.1.14)

**Closed issues:**

- Issue when install prometheus and alertmanager  [\#23](https://github.com/voxpupuli/puppet-prometheus/issues/23)

**Merged pull requests:**

- allow specification of a custom template [\#25](https://github.com/voxpupuli/puppet-prometheus/pull/25) ([lobeck](https://github.com/lobeck))
- Allow overriding shared\_dir [\#22](https://github.com/voxpupuli/puppet-prometheus/pull/22) ([roidelapluie](https://github.com/roidelapluie))
- Remove extra blank spaces at the end of lines [\#21](https://github.com/voxpupuli/puppet-prometheus/pull/21) ([roidelapluie](https://github.com/roidelapluie))
- Fix AlertManager Class [\#20](https://github.com/voxpupuli/puppet-prometheus/pull/20) ([lswith](https://github.com/lswith))

## [v0.1.13](https://github.com/voxpupuli/puppet-prometheus/tree/v0.1.13) (2016-09-14)

[Full Changelog](https://github.com/voxpupuli/puppet-prometheus/compare/0305571d72f27fee2c494792cb0970a5d37887f7...v0.1.13)

**Closed issues:**

- Update forge version [\#10](https://github.com/voxpupuli/puppet-prometheus/issues/10)

**Merged pull requests:**

- Add console support [\#15](https://github.com/voxpupuli/puppet-prometheus/pull/15) ([mspaulding06](https://github.com/mspaulding06))
- Add missing quotes to params file [\#14](https://github.com/voxpupuli/puppet-prometheus/pull/14) ([mspaulding06](https://github.com/mspaulding06))
- Get rid of leading whitespace in generated configs [\#13](https://github.com/voxpupuli/puppet-prometheus/pull/13) ([mspaulding06](https://github.com/mspaulding06))
- Bunch of changes to work against the latest prom releases [\#11](https://github.com/voxpupuli/puppet-prometheus/pull/11) ([brutus333](https://github.com/brutus333))
- add support for newer releases of node\_exporter [\#4](https://github.com/voxpupuli/puppet-prometheus/pull/4) ([patdowney](https://github.com/patdowney))
- Systemd does not see all shutdowns as failures [\#3](https://github.com/voxpupuli/puppet-prometheus/pull/3) ([tarjei](https://github.com/tarjei))



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
