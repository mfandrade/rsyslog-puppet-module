node 'logserver.trt8.net' {

  file { 'sources.list':
    path    => '/etc/apt/sources.list',
    ensure  => present,
    content => file('/vagrant/sources.list.br'),
  }

  exec { 'apt-get update -y':
    path        => '/usr/bin',
    refreshonly => true,
    subscribe   => File['sources.list'],
  }

  include mysql
}
