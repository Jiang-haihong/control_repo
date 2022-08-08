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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCrhTblNHuCVn4s5QWtLWYO0jSP3jDXvAs82b48yMW9e2FrekkMyq52DMSgqJcVbqCCpG8NOFpEmfqz/Wv/aiHkcqZcgT3azq+ck4uZxavUHbtAshSD0NECWJsuAEfIr3PV9CuHkYz+xtgqtnzJoq9Mlzqe8l+QYxT5+eAeBxodMELoFoKMnSgf0Q0kJh0ig+5gQB4bvEDmlvigXWjkRVno0LFcWGhzbguL634x+mK0D06okxuDozpY5EdUw9BnaV5fP5A+BGa4VSBWMqGLTabC5QIXiY7Xa+MRX1JhJhU++F65uq2lC0LrmmZtzXmY2IPm9SRB/BXU5aXeYIMuueB7',
	}  
}
