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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC0YBXBbxVc3aw1Fl+zvdUafNEi4oYLd9nMsi4L+Fr8e5oxctAExPISxvx+FuD30wvIfeGFRIGdNGYvAxzU+2oAXsjkuOYSyDls2OmOrGQxmtqZ/PxpoGcK11aKTcC/hpFd13dx4mCXmV+t/vibuq5RH5+GcXyd0QaeK4UKvLfjdvnDr2MtgVdCvMRejbQgyatoXsOwbDxK1itDMvhvL1KcGV5+TW1vgeZiK7fwKaxfztpaIuJYovQ05HTVNWORzOY12dlSzT2KAWYPFZikPIxt/DI/KFD+JvsEsIgiXeV0HGMEC8duVROzVcpJp3N/ppX6CgyoFasJqTtMu+8k5HwT',
	}  
}
