class tools {
  
  $packages = [
    "curl",
    "wget"
  ]  

  package { $packages:
    ensure => present,
    require => Class["system-update"]
  }

  exec { 'download_composer':
    command   => "curl -sS https://getcomposer.org/installer | php",
    cwd       => "/tmp",
    require   => [Package["curl"], Class["php"]],
    creates   => "/tmp/composer.phar",
  }

# check if directory exists
  file { "/usr/local/bin":
    ensure => directory,
  }

# move file to target_dir
  file { "/usr/local/bin/composer":
    ensure  => present,
    source  => "/tmp/composer.phar",
    require => [ Exec['download_composer'], File["/usr/local/bin"] ],
    mode    => 0755,
  }



}
