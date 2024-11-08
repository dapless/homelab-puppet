class hl_kvm_host::configs{
  file { 'qemu config':
  path => '/etc/libvirt/qemu.conf',
  owner => root,
  group => root,
  ensure => present,
  source => 'puppet:///modules/hl_kvm_host/configs/qemu.conf',
  }
}
