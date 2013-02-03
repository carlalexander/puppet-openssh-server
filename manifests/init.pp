# Class: openssh_server
#
# This module manages OpenSSH Server.
#
# Parameters:
#
# There are no default parameters for this class. All module parameters are managed
# via the openssh_server::params class
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# The module works with sensible defaults:
#
# node default {
#   include openssh_server
# }
class openssh_server (
  $port        = $openssh_server::params::port,
  $allow_users = undef
) inherits openssh_server::params {
  class { 'openssh_server::package':
    notify => Class['openssh_server::service'],
  }

  class { 'openssh_server::config':
    port        => $port,
    allow_users => $allow_users
    require     => Class['openssh_server::package'],
    notify      => Class['openssh_server::service'],
  }

  class { 'openssh_server::service': }
}