#!
#con cac
class package_install
{
	package { "openssh":
		ensure=>installed,
	}
	package { "httpd":
		ensure=>installed,
	}
	package { "mysql57-community-release-el7-11":
		ensure=>installed,
		source=>"https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm",
	}
	package { "mysql":
		ensure=>installed,
	}
	package { "tigervnc-server":
		ensure=>installed,
	}
	package { "tmux":
		ensure=>installed,
	}
	package { "dia2code-1.0.0":
		ensure=>installed,
		source=>"https://nchc.dl.sourceforge.net/project/dia2code/dia2code%2B/1.0.0/dia2code-1.0.0.tar.gz",
	}
	package { "gcc":
		ensure=>installed,
	}
	package { "gdb":
		ensure=>installed,
	}
	package { "vim":
		ensure=>installed,
	}
	package { "emacs":
		ensure=>installed,
	}
}
