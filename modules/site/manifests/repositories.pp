class site::repositories {
  case $::operatingsystem ? {
    'CentOS', 'RedHat': {
      yumrepo {
        'remi':
          desc     => 'Les RPM de remi pour Enterprise Linux',
          baseurl  => 'http://remi-mirror.dedipower.com/enterprise/$releasever/remi/x86_64/',
          enabled  => 1,
          gpgcheck => 0,
      }
    }
  }

}
