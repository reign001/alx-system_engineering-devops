#!/usr/bin/env bash
#client configuration file
file {'/etc/ssh/ssh_config':
	ensure => present,
}
file_line {'Turn off passwd auth':
	path => '/etc/ssh/ssh_config',
	line => 'password Authentication no',
	match => '^#PasswordAuthentication',
}
file_line {'Declare identity file':
	path => '/etc/ssh/ssh_config',
	line => 'IdnetityFile ~/.ssh/school',
	match => '^#IdentityFile',
}
