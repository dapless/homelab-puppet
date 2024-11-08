class hl_core::configs {
  file { 'hosts file':
  path => '/etc/hosts',
  owner => root,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/hosts',
  mode => '644'
  }
}
