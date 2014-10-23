class www-symlink {

   file { "/var/www/sample-app":
     ensure  => "link",
     target  => "/vagrant",
     require => Class["apache"],
     #notify  => Service["apache2"],
   }

}
