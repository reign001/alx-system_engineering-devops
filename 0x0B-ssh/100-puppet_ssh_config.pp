#!/usr/bin/env bash
#client configuration file using puppet

file { '/etc/ssh/ssh_config':
	ensure => present,

content =>"

	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentification no
	",

}
