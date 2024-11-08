node 'default' {
  include role::hl_core
}
node 'lw-3067.nexcess.net' {
  include role::client_work
}

node 'phedia.lan' {
  include role::hl_core
  include role::physical_host
  include role::kvm_host
}
node 'zedia.lan' {
  include role::hl_core
  include role::kvm_host
}
node 'zad.lan' {
  include role::hl_core
  include role::physical_host
}
node 'think.lan' {
  include role::hl_core
  include role::physical_host
  include hl_borg_host # Put this in the borg role later.
}
node 'archive1.lan' {
  include role::hl_core
  include role::physical_host
}
node 'archive2.lan' {
  include role::hl_core
  include role::physical_host
}
node 'test.lan' {
  include role::hl_core
  include role::kvm_host
}

# Notes
# Reorganize so physical host is not a role but a profile included in the borg_host and kvm_host roles.
# make borg and kvm roles!
# change phedia hypervisor setup so it's like zedia's with it running as a non root user 
# a dev role?
# a role to configure client devices? such as laptops ssh config and maybe core stuff too
