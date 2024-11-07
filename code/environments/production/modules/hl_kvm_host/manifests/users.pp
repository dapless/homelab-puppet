class hl_core::admin_users {
  user { 'hypervisor user':
  name => hypervisor,
  ensure => present,
  shell => '/bin/bash',
  purge_ssh_keys => true,
  }
  file { 'hypervisor .ssh dir':
  path => '/home/hypervisor/.ssh',
  owner => hypervisor,
  ensure => directory,
  }
  ssh_authorized_key { 'hypervisor key':
    name     => 'hypervisor key',
    ensure   => 'present',
    key      => '-----BEGIN OPENSSH PRIVATE KEY-----
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
-----END OPENSSH PRIVATE KEY-----',
    type     => 'ssh-rsa',
    user     => 'hypervisor',
  }
}
