class mysql {

  exec { 'Prepare':
    command => 'sed -i "s/us\./br./" /etc/apt/sources.list; apt-get update -y',
    path    => '/bin:/usr/bin',
  }

  package { 'mysql-server':
    ensure  => installed,
    require => Exec['Prepare'],
  }

}
