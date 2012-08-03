node defaule {
  include site::repositories
  class {
    'glpi':
      require => Class['site::repositories'],
  }
}
