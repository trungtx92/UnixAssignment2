# agent config
class agent_config
{
	exec { "puppet_ini":
		#path=>"/usr/local/bin",
		command=> "/usr/local/bin/puppet module install puppetlabs-inifile --version 1.6.0",
	}
	ini_setting { "agent_runinterval":
		ensure=>present,
		path=>"/etc/puppetlabs/puppet/puppet.conf",
		section=>"agent",
		setting=>"runinterval",
		value=>"1200",
	}
}
