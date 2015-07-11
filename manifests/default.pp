Exec {
  path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

include system-update
include apache
include php
include mysql
include www-symlink
include git
include tools
include wget
include phpunit
