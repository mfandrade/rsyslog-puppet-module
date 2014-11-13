class mysql {

  package { 'mysql-server':
    ensure => latest,
  }

}
