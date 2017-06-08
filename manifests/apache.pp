
class profile::apache (
  Boolean $default_hsot		= true,
  Hash $apache_vhost_servers,
  #Integer $port 		= 80,
  #String $doc_root		= '/var/www/test',
) { 

  class { '::apache': 
    default_vhost	=> false,
  }
  
  create_resources(::apache::vhost, $apache_vhost_servers)
  #::apache::vhost { 'first':
  #  port	=> $port,
  #  docroot	=> $docroot,
  #}
}
