class hl_core::packages {
package { 'vim':
  ensure => installed,
  name   => vim,
}
package { 'git':
  ensure => installed,
  name   => git,
}
package { 'ufw':
  ensure => installed,
  name   => ufw,
}
package { 'uuid':
  ensure => installed,
  name   => uuid,
}
package { 'iftop':
  ensure => installed,
  name   => iftop,
}
package { 'iotop':
  ensure => installed,
  name   => iotop,
}
package { 'htop':
  ensure => installed,
  name   => htop,
}
package { 'sysstat':
  ensure => installed,
  name   => sysstat,
}
package { 'iperf':
  ensure => installed,
  name   => iperf,
}
package { 'wireguard-tools':
  ensure => installed,
  name   => wireguard-tools,
}
package { 'ping':
  ensure => installed,
  name   => inetutils-ping,
}
package { 'ethtool':
  ensure => installed,
  name   => ethtool,
}
package { 'mtr':
  ensure => installed,
  name   => mtr,
}
package { 'nmap':
  ensure => installed,
  name   => nmap,
}
package { 'bash-completion':
  ensure => installed,
  name   => bash-completion,
}
package { 'tmux':
  ensure => installed,
  name   => tmux,
}
}
