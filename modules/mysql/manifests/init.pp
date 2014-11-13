class mysql {

  package { 'mysql-server-5.5':
    ensure   => installed,
  }

}
