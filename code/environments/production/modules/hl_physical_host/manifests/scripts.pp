class hl_physical_host::scripts {
  # Monthly zpool scrubs 
  file { 'zfs-scrub':
  path => '/etc/cron.monthly/zfs-scrub',
  owner => root,
  ensure => present,
  source => 'puppet:///modules/hl_physical_host/scripts/zfs-scrub',
  mode => '755'
  }
  file { 'zfs-status':
  path => '/etc/cron.daily/zfs-status',
  owner => root,
  ensure => present,
  source => 'puppet:///modules/hl_physical_host/scripts/zfs-status',
  mode => '755'
  }
}
