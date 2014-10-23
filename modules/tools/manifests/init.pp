class tools {
  
  $packages = [
    "curl",
    "wget"
  ]  

  package { $packages:
    ensure => present,
    require => Class["system-update"]
  }

}
