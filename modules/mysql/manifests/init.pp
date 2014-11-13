class mysql ($root_passwd = 'root') {

  package { 'mysql-server':
    ensure   => installed,
  }

  service { 'mysql':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Package['mysql-server'],
  }

  exec { 'Set password':
    command => "mysqladmin -uroot password ${root_passwd}",
    unless  => "mysqladmin -uroot -p${root_passwd} status",
    path    => '/usr/bin',
    require => Service['mysql'],
  }

}
