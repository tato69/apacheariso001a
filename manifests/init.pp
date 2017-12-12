class apacheariso001a {

  if $::osfamily == 'RedHat' {
    $apachename     = 'httpd'
  } else  {
    $apachename  = 'apache2'
  }

 package { $apachename:
  ensure  => latest,

}
service { $apachename:
    ensure   => 'running',
    enable  => true,
    require   => Package[$apachename],
}

}
