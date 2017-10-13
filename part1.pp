#!bin/bash
class usaptest 
{
	group { "sysadmin":
		ensure=>present,
	}
	group { "cars":
		ensure=>present,
	}
	group { "trucks":
		ensure=>present,
	}
	group { "ambulances":
		ensure=>present,
	}
	user { "becca":
		name=>"becca",
		ensure=>present,
		home=>"/home/becca",
		managehome=>true,
		password=>"becca123",
		uid=>10016050,
		shell=>"/bin/bash",
		groups=>["sysadmin", "cars"],
	}
	package { "tcsh":
		ensure=>installed,
	}
	user { "fred":
		name=>"fred",
		ensure=>present,
		home=>"/home/fred",
		managehome=>true,
		password=>"fred123",
		uid=>10026050,
		shell=>"/bin/csh",
		groups=>["trucks", "cars"],
	}
	user { "wilma":
		name=>"wilma",
		ensure=>present,
		home=>"/home/wilma",
		managehome=>true,
		password=>"wilma123",
		uid=>10036050,
		groups=>["trucks", "cars", "ambulances"],
		
	}
	ssh_authorized_key { "wilma_key":
		ensure=>present,
		user=>"wilma",
		type=>"ssh-rsa",
		key=>"AAAAB3Nza[...]qXfdaQ==",
	}
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
	package { "openssh":
		ensure=>installed,
	}
	package { "httpd":
		ensure=>installed,
	}

}







