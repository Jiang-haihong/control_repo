class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDlMBAeeiyOfLx1XPHhVozA3isncle6FUmxL44OGP9hiwJ4/2MHL2JK1aZX/2V2xn26oQrXHnEhLGsoLkUwcY0jmRwC+/lWTXxWz51NgAWfFx7WIYXi0X1WvyZsiAL6l5B0/4fdkVRVHqQUa0uGxRDm5RdzqD7EzZVWSY/uVZVwtpv7URiPAl5zPJkwH+Me1wwK/WhlE09xrPLHgEjNGLyoceQxisRmeR1WMS9h8xVMBPRQt6S5uzM+tzz7lJ7zQncypHXWzgDHhDfOVAtfAGhN1z1BNss0qaQZvEwZgaLNwH5w9q4RCMwsLfB0HOclqEg36iy0Csy9tHMadcDh5JST',
	}  
}
