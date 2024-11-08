class hl_kvm_host::users {
  user { 'hypervisor user':
  name => hypervisor,
  groups => [libvirt, kvm],
  ensure => present,
  shell => '/bin/bash',
  purge_ssh_keys => true,
  }
  file { 'hypervisor home dir':
  path => '/home/hypervisor',
  owner => hypervisor,
  ensure => directory,
  }
  file { 'hypervisor .ssh dir':
  path => '/home/hypervisor/.ssh',
  owner => hypervisor,
  ensure => directory,
  }
  ssh_authorized_key { 'hypervisor key':
    name     => 'hypervisor key',
    ensure   => 'present',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQCqBwCm1JVkWsCi9MRbXlVcXcqjAITFgeR7CtVyJjhaQXHf5NXU8ZAm2nIeuQffgut4cJ2eYaniS6GwqwxS/wn2oeFJky9ZnGA/O0nDU5MyXduQ0Q/UckNQlcfZjgFvuUxJaFAC6LxBqOf0CoisVueW2q2n3h5Kq6rMFU2iGBJJQ0ipyGIxAbuo/lBb65d3+zU7qwO+0ojQRtrU7QtTQb3zqSAHkJgbUI/6msrrnAKiGrQtvAxj87dv/Rmbbg5icoYnD5tCEiJMdByWYK0nWNsqfUa2RD4edD4cXaeJBbTNiWv9IFWGKIy2JJ6um5YiaU+lWtjPQdKYjCyRXfUJ8/O2bI73NE3SeKWjGQSEP7JSFHJwEnmU9ZXpOpiSFKW5xSlWyjUf0wPxtzIXrhpgMOygcnOHSW+xAk6mxH+pmajNzMCQfw4kPmzyyR3Bgap3EwXl4UCWV6T/9omyzjBlBYx6PiUtXAhWiiVTBso8pHIulh0E0MA1w8XLMmLp0pKbI2k=',
    type     => 'ssh-rsa',
    user     => 'hypervisor',
  }
}

