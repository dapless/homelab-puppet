class hl_kvm_host::packages {
  package { 'libvirt-daemon':
  ensure => installed,
  name   => libvirt-daemon,
  }
}
