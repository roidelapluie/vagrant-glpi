node default {
  include site::repositories

  include apache::params
  include apache

  class {
    'glpi':
      require => Class['site::repositories', 'apache::params', 'apache'],
  }
}
