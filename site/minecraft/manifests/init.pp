class minecraft (
  $url = 'https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar',
  $install_dir = '/opt/minecraft'
  )
{
  file {$install_dir:
    ensure => directory,
    }
    
   file {"{${install_dir}/minecraft_server.jar":
    ensure => file,
    source => $url,
    before => Service['minecraft'],
   }
    package {'java':
      ensure => present,
      }
      
    file {"${install_dir}/eula.txt":
      ensure => file,
      content => 'eula=ture',
      }
      
      file {'/etc/systemd/system/minecraft.service':
        ensure => file,
        ##source => 'puppet:///modules/minecraft/minecraft.service',
        content -> epp('minecraft/minecraft.service'),
        }
        
       service {'minecraft':
          ensure => running,
          enable => true,
       }
    }
