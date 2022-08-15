class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
    }
    
   file {'/opt/minecraft/minecraft_server.jar':
    ensure => file,
    source => 'https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar',
    before => Service[‘minecraft’],
   }
    package {'java':
      ensure => present,
      }
      
    file {'opt/minecraft/eula.txt':
      ensure => file,
      content => 'eula=ture',
      }
      
      file {'/etc/systemd/system/minecraft.service':
        ensure => file,
        source => 'puppet:///modules/minecraft/minecraft.service',
        }
        
       service {'minecraft':
          ensure => running,
          enable => true,
          require => [Package['java'],File['/opt/minecraft/eula.txt'],File['/etc/systemd/system/minecraft.service']],
       }
    }
