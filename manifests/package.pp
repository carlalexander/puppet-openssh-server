# Class: openssh_server::package
#
# This module manages OpenSSH Server package installation
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
class openssh_server::package {
  package { 'openssh-server':
    ensure => latest,
  }
}