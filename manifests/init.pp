class apacheariso001 {

  if $::osfamily == 'RedHat' {
    $apachename     = 'httpd'
  } elseif $::osfamily == 'Debian' {
    $apachename     = 'apache2'
  } else {
    print "This is not a supported distro."
  }
    package { $apachename: ensure => installed; }
}
