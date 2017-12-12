class apacheariso001a {

  if $::osfamily == 'RedHat' {
    $apachename     = 'httpd'
	$fw             = 'firewalld'
  } else  {
    $apachename  = 'apache2'
	$fw             = 'ufw'
  }

 package { $apachename:
  ensure  => latest,

}
service { $apachename:
    ensure   => 'running',
    enable  => true,
    require   => Package[$apachename],
}

service { $fw:
    ensure   => 'stopped',
    enable  => false,
}


}
