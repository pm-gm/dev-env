class mysql {

  package { "mysql-server":
    ensure => present,
    require => Class["system-update"]
  }

  service { "mysql":
    ensure => running,
    require => Package["mysql-server"],
  }

}
