# Class: openssh_server::service
#
# This module manages OpenSSH Server service management
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
class openssh_server::service {
  service { "ssh":
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}