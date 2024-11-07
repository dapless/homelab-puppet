class hl_physical_host::packages {
  # Packages required by physical hosts only 
  package { 'borgbackup':
    ensure => installed,
    name   => borgbackup,
  }
  package { 'smartctl':
    ensure => installed,
    name   => smartmontools,
  }
  package { 'zfsutils':
    ensure => installed,
    name   => zfsutils-linux,
  }
  package { 'dmidecode':
    ensure => installed,
    name   => dmidecode,
  }
  package { 'sanoid':
    ensure => installed,
    name   => sanoid,
  }
}
