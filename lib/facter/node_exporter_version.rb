# Make node_exporter version available as a fact

Facter.add(:node_exporter_version) do
  confine { Facter.value(:kernel) != 'windows' }
  confine { Facter.value(:operatingsystem) != 'nexus' }
  setcode do
    if Facter::Util::Resolution.which('node_exporter')
      Facter::Core::Execution.exec('node_exporter --version 2>&1').match(/^node_exporter,\ version\ (\d+\.\d+\.\d+).*$/)[1]
    end
  end
end
