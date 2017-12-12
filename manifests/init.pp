class apacheariso001a {

  if $::osfamily == 'RedHat' {
    $apachename     = 'httpd'
  } elseif $::osfamily == 'Debian' {
    $apachename     = 'apache2'
  } else {
    print "This is not a supported distro."
  }
 
 package { $apachename:
  ensure  => latest,
  
}
service { $apachename:
    ensure   => 'running',
    enable  => true,
    require   => Package['jenkins'],
}

}