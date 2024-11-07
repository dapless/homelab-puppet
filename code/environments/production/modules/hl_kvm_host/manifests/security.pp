class hl_core::security {
  # Auto updates
  class { 'unattended_upgrades':
    origins => [
      'origin=${distro_id},suite=${distro_codename}',
      'origin=${distro_id},suite=${distro_codename}-security',
      'origin=${distro_id},suite=${distro_codename}-backports',
      'origin=${distro_id},suite=${distro_codename}-updates',
    ],
    auto => { 'reboot' => false, 'remove' => true },
    enable => 1
  }

  file { 'sshd_config':
  path => '/etc/ssh/sshd_config',
  owner => root,
  ensure => present,
  source => 'puppet:///modules/hl_core/configs/sshd_config',
  mode => '644'
  }
}
