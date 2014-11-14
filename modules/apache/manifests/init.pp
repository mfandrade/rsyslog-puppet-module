class apache {
  package { 'apache':
    name   => 'apache2',
    ensure => installed,
  }  
  file { 'httpd.conf':
    path    => '/etc/apache2/apache2.conf',
    ensure  => present,
    require => Package['apache'],
  }
  service { 'apache':
    name       => 'apache2',
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    subscribe  => File['httpd.conf'],
  }

}
