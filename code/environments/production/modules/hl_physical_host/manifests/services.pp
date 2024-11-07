class hl_physical_host::services {
  service { 'sanoid.timer':
    ensure => 'running',
    enable => 'true',
  }
}
