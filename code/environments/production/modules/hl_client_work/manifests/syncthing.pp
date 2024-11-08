class hl_client_work::syncthing {
  package { 'syncthing':
  ensure => installed,
  name   => syncthing,
  }
  service { 'syncthing@dpless.service':
  name => 'syncthing@dpless.service',
  ensure => running,
  enable => true,
  }
}
