class hl_core {
  include apt
  include hl_core::packages
  include hl_core::admin_users
  include hl_core::security
  include hl_core::libraries

 file { 'cron.daily':
  path => '/etc/cron.daily',
  owner => root,
  group => root,
  ensure => directory,
 }
 file { 'cron.weekly':
  path => '/etc/cron.weekly',
  owner => root,
  group => root,
  ensure => directory,
 }
 file { 'cron.monthly':
  path => '/etc/cron.monthly',
  owner => root,
  group => root,
  ensure => directory,
 }
}
