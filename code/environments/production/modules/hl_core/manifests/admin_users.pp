class hl_core::admin_users {

  # Setup dapless admin user
  user { 'dapless admin user':
  name => dapless,
  ensure => present,
  shell => '/bin/bash',
  purge_ssh_keys => true,
  }
  file { 'dapless .ssh dir':
  path => '/home/dapless/.ssh',
  owner => dapless,
  ensure => directory,
  }
  ssh_authorized_key { 'homelab admin key':
    name     => 'homelab admin key',
    ensure   => 'present',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQC37drh7KNjHOEnhu+bHH4tBaZEUUJkT5sjyydrOAQ5MkFBrsb2sEy/cTjQ35XsScsopJgJRMiyUmVipOvFfOnuz4L8dTfuuEHwnjfX7d/SXggDgPBc+tDeskbXxcEfKowd+pudowWjFQC1EWYfT5soafrA+20ny5XRnhTKzQB9x3C8/gyGOLLUPaUT+CpzUFAcvPa3FtaLC4L+ld3kf6zofkmxCJ23P7tmDJx/jSxF80fRAeJ8iFVIN8Gnk6tc6xDtklSTYZtuLpYYFB9zYJVh5iRhWB5X0hosSKDeffGrUB/u+JtjhP1f0cmPwDLKPTxjSM374OMmCLAREDYf6xAmzCmOKB8LtFkDHxBAgsnfKnJ5RuUHr4EdiEtwo6cVey39BW9rpMH8Ps7a+v9IW9mL3GeHVB5wqt5rz/7R2TCKY7KN/QzygTYemMriGHlM9YCO9apn7cxFFI5KtFErpmkiI98GrtK95e/V/5kNrWwWH1/fHyFAfjC+gbrimeJwDnk=',
    type     => 'ssh-rsa',
    user     => 'dapless',
  }

  # Passwordless sudo for dapless admin user
  class { 'sudo': }
  sudo::conf { 'dapless':
    content  => "dapless ALL=(ALL) NOPASSWD: ALL",
  }

  #------dapless user configs--------

  # Create the .hushlogin file which disables motd
  file { 'dapless hush login':
  path => '/home/dapless/.hushlogin',
  owner => dapless,
  group => dapless,
  ensure => present,
  }
  file { 'dapless profile':
  path => '/home/dapless/.profile',
  owner => dapless,
  group => dapless,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/profile',
  }
  file { 'dapless bashrc':
  path => '/home/dapless/.bashrc',
  owner => dapless,
  group => dapless,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/bashrc',
  }
  file { 'dapless bashrc.d':
  path => '/home/dapless/.bashrc.d',
  owner => dapless,
  group => dapless,
  ensure => directory,
  }
  file { 'dapless home dir':
  path => '/home/dapless',
  owner => dapless,
  group => dapless,
  ensure => directory,
  recurse => true
  }
  file { 'dapless vimrc':
  path => '/home/dapless/.vimrc',
  owner => dapless,
  group => dapless,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/vimrc',
  }
  file { 'dapless tmux.conf':
  path => '/home/dapless/.tmux.conf',
  owner => dapless,
  group => dapless,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/tmux.conf',
  }

  # ------------ root user configs -----------------
  # Create the .hushlogin file which disables motd
  file { 'root hush login':
  path => '/root/.hushlogin',
  owner => root,
  group => root,
  ensure => present,
  }
  file { 'root profile':
  path => '/root/.profile',
  owner => root,
  group => root,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/profile',
  }
  file { 'root bashrc':
  path => '/root/.bashrc',
  owner => root,
  group => root,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/bashrc',
  }
  file { 'root bashrc.d':
  path => '/root/.bashrc.d',
  owner => root,
  group => root,
  ensure => directory,
  }
  file { 'root vimrc':
  path => '/root/.vimrc',
  owner => root,
  group => root,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/vimrc',
  }
  file { 'root tmux.conf':
  path => '/root/.tmux.conf',
  owner => root,
  group => root,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/tmux.conf',
  }
}
