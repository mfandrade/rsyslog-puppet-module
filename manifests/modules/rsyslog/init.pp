class rsyslog {

  $pkgs = ['rsyslog-relp']

  package { $pkgs:
    ensure => installed,
  }

}
