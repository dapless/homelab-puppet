class hl_core::libraries {
  file { 'libLog':
  path => '/opt/libLog',
  owner => root,
  ensure => present,
  source => 'puppet:///modules/hl_core/libraries/libLog',
  mode => '644'
  }
  file { 'libPushNotify':
  path => '/opt/libPushNotify',
  owner => root,
  ensure => present,
  source => 'puppet:///modules/hl_core/libraries/libPushNotify',
  mode => '644'
  }
}
