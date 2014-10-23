class php {
 
   $packages = [
     "php5",
     "php5-cli"
   ]
   
   package { $packages:
    ensure => present,
    require => Class["system-update"]
   }
}
