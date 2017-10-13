#!bin/bash
class manage_configurationFile
{
	exec { "stdlib_install":
		command=>"/usr/local/bin/puppet module install puppetlabs-stdlib --version 4.20.0",
	}
	file_line{ "disable_rootLogin":
		path=>"/etc/ssh/sshd_config",
		line=>"PermitRootLogin no",
		match=>"^#PermitRootLogin yes",
	}
	file_line { 'apacheRoot_changing':
 		ensure=>present,
  		replace=>true, 
  		path=>'/etc/httpd/conf/httpd.conf',
  		line=>'DocumentRoot "/var/www/s3626050"',
  		match=>'^DocumentRoot "\/var\/www\/html"',
	}	
}
