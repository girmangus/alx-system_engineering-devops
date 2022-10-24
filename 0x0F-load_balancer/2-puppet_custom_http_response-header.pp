# Puppet manifest to install nginx

package { 'nginx':
  ensure => installed,
}

file_line { 'aaaaa':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => '/listen 80 default_server/a add_header X-Served-By \"$HOSTNAME\";" /etc/nginx/sites-available/default',
}

file { '/var/www/html/index.nginx-debian.html':
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
