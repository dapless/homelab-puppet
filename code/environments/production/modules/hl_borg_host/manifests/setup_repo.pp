class hl_borg_host::setup_repo {
  file { '/mnt/backup/phedia.lan':
    ensure => 'directory',
    owner  => 'borgback',
    group  => 'borgback',
  }

  exec { 'chown /mnt/backup':
    command => '/usr/bin/chown borgback:borgback -R /mnt/backup'
  }
}
