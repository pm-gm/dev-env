class php {
 
   $packages = [
     "php5",
     "php5-cli",
     "php5-mysql"
   ]
   
   package { $packages:
    ensure => present,
    require => Class["system-update"]
   }
}
