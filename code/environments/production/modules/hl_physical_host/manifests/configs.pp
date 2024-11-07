class hl_physical_host::configs {
file { '/etc/sanoid':
  ensure => 'directory',
}

  file { 'sanoid.conf':
  path => '/etc/sanoid/sanoid.conf',
  owner => root,
  ensure => present,
  source => 'puppet:///modules/hl_physical_host/configs/sanoid.conf',
  mode => '644'
  }
}
