class php {
  package { 'php':
    name   => 'php5',
    ensure => latest,
  }
  file { 'php.conf':
    path   => '/etc/apache2/mods-enabled/php5.conf':
    ensure => 'link',
    target => '../mods-available/php5.conf',
    require => Package['php'],
  }
  file { 'php.ini':
    path    => '/etc/php5/apache2/php.ini',
    ensure  => present,
    require => Package['php'],
  }
  service { 'apache':
    name       => 'apache2',
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    subscribe  => [File['php.conf'], File['php.ini']],
  }
}
