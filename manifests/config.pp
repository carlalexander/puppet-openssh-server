# Class: openssh_server::config
#
# This module manages OpenSSH Server bootstrap and configuration
#
# Parameters:
#
# There are no default parameters for this class.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# This class file is not called directly
class openssh_server::config(
  $port        = $openssh_server::params::port,
  $allow_users = undef
) inherits openssh_server::params {
  File {
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  file { "/etc/ssh/sshd_config":
    ensure  => file,
    content => template('openssh_server/sshd_config.erb'),
  }
}