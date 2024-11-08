class hl_client::syncthing {
  file { 'dapless .config dir':
  path => '/home/dapless/.config',
  owner => dapless,
  ensure => directory,
  }
  file { 'dapless .config/systemd dir':
  path => '/home/dapless/.config/systemd',
  owner => dapless,
  ensure => directory,
  }
  file { 'dapless .config/systemd/user dir':
  path => '/home/dapless/.config/systemd/user',
  owner => dapless,
  ensure => directory,
  }
  file { 'dapless syncthing service':
  path => '/home/dapless/.config/systemd/user/syncthing.service',
  owner => dapless,
  ensure => present,
  source => 'puppet:///modules/hl_core/services/syncthing.service',
  mode => '640'
  }
  package { 'syncthing':
  ensure => installed,
  name   => syncthing,
  }
}
