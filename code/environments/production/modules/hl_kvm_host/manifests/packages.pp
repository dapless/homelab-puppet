class hl_kvm_host::packages {
  package { 'libvirt-daemon-system':
  ensure => installed,
  name   => libvirt-daemon-system,
  }
  package { 'libvirt-clients':
  ensure => installed,
  name   => libvirt-clients,
  }
}
