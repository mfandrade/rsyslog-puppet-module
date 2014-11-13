class rsyslog {

  package { 'rsyslog-relp':
    ensure => installed,
  }
  package { 'rsyslog-mysql':
    ensure => installed,
  }

  file { 'rsyslog.conf':
    path    => '/etc/ryslog.conf',
    content => 'puppet:///modules/rsyslog/rsyslog.conf',
    require => Package['rsyslog-relp'],
  }

  service { 'rsyslog':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => File['rsyslog.conf'],
  }

}
