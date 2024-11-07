class hl_borg_host::borguser {
  user { 'borgback user':
  name => borgback,
  ensure => present,
  shell => '/bin/bash',
  purge_ssh_keys => true,
  }
 file { 'borgback .ssh dir':
  path => '/home/borgback/.ssh',
  owner => borgback,
  ensure => directory,
  }
  ssh_authorized_key { 'borg backup key':
    name     => 'borg backup key ',
    ensure   => 'present',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQDiFGQBeRo3AMuM5y8MLZ8xw3qx0o8dGOOubM/0qfCfTu6AuTLtTpgJhsvAaVIfhrQRtbV06Z144SAhEj4qqg2SmwBBQ0rzLmeLMWBOAkBQXaucayvvKccgzJi9C0Fi9nrIvWrts5Nxg2rsKrJ6XqPET4vdzIdz9ZuKixpfNLaExWp5rf2IXtRFORXuMdc0iKfTUpQ5CREMP0X7QObdcuV3FaiJdCvXb/haOo6JRF/2RFEwDbNRS5zJ0mCMqUoJD0XEC3MFUgma1XC3j//lBGxgti20/8l59RBLJg4zutwuFxd3x63HYwZyvQa5x1MW+qWPflXg0GAlMjCf5BmFDXVZ7SAue8kTZoK31Z7aP7wCRIYNxzIBYmxK55xJXq6O8/gItTyYZww5JkaJmxwwhOerqzgKWG6Im+kZf+RIsSsUw+1qQx/foI4tTqaXevK3ec9Js31xy8MYsVOctFyu7iO2DwZ9VrpSdJ/8OkhOdcFZ0dm6ZXQBEuxfMzll1xYoSjc=',
    type     => 'ssh-rsa',
    user     => 'borgback',
  }

  # Create the .hushlogin file which disables motd
  file { 'borgback hush login':
  path => '/home/borgback/.hushlogin',
  owner => borgback,
  group => borgback,
  ensure => present,
  }
  file { 'borgback profile':
  path => '/home/borgback/.profile',
  owner => borgback,
  group => borgback,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/profile',
  }
  file { 'borgback bashrc':
  path => '/home/borgback/.bashrc',
  owner => borgback,
  group => borgback,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/bashrc',
  }
  file { 'borgback bashrc.d':
  path => '/home/borgback/.bashrc.d',
  owner => borgback,
  group => borgback,
  ensure => directory,
  }
  file { 'borgback home dir':
  path => '/home/borgback',
  owner => borgback,
  group => borgback,
  ensure => directory,
  recurse => true
  }
  file { 'borgback vimrc':
  path => '/home/borgback/.vimrc',
  owner => borgback,
  group => borgback,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/vimrc',
  }
  file { 'borgback tmux.conf':
  path => '/home/borgback/.tmux.conf',
  owner => borgback,
  group => borgback,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/tmux.conf',
  }
}
