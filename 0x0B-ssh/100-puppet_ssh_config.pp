#!/usr/bin/env bash
# using puppet to authomat changes to configuration file

file { 'etc/ssh/ssh_config':
	ensure => present,
	
content =>"
	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	passwordAuthentication no
	",
}
