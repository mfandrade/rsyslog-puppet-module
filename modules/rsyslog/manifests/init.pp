class rsyslog {

  package { 'rsyslog-relp':
    ensure => installed,
  }
  package { 'rsyslog-mysql':
    ensure => installed,
  }

  file { 'rsyslog.conf':
    path    => '/etc/ryslog.conf',
    source  => 'puppet:///modules/rsyslog/rsyslog.conf',
    require => Package['rsyslog-relp'],
  }

  service { 'rsyslog':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => File['rsyslog.conf'],
  }

  file { 'relp.conf':
    ensure => present,
    path   => '/etc/rsyslog.d/relp.conf',
    owner  => root,
    group  => root,
    mode   => '0644',
    source => 'puppet:///modules/rsyslog/relp.conf',
  }
  file { 'mysql.conf':
    ensure  => present,
    path    => '/etc/rsyslog.d/mysql.conf',
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => 'puppet:///modules/rsyslog/mysql.conf',
    require => Package['rsyslog-mysql'],
  }
  file { '/var/run/rsyslog':
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0755',
    require => File['mysql.conf'],
  }

}
