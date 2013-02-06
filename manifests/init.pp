# Class: openssh_server
#
# This module manages OpenSSH Server.
#
# Parameters:
#   [*port*]         - Port server is listeing to
#   [*allow_users*]  - Allowed users
#   [*allow_groups*] - Allowed groups
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
#   class { 'openssh_server': }
# }
class openssh_server (
  $port         = $openssh_server::params::port,
  $allow_users  = undef,
  $allow_groups = undef
) inherits openssh_server::params {
  class { 'openssh_server::package':
    notify => Class['openssh_server::service'],
  }

  class { 'openssh_server::config':
    port         => $port,
    allow_users  => $allow_users,
    allow_groups => $allow_groups,
    require      => Class['openssh_server::package'],
    notify       => Class['openssh_server::service'],
  }

  class { 'openssh_server::service': }
}