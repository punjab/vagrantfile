# Basic Puppet Apache manifest

class apache {
  package { "httpd":
    ensure => present,
  }

  service { "httpd":
    ensure => running,
    require => Package["httpd"],
  }

  file { '/var/www':
    ensure => link,
    target => "/vagrant",
    notify => Service['httpd'],
    force  => true
  }
}

class networking{
  file {'/etc/hosts':
    ensure => present,
    content => template("networking/hosts.erb"),
  }
}

# include apache 
include networking


