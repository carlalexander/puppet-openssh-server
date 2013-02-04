# Class: openssh_server::params
# 
# This class manages OpenSSH Server parameters.
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
class openssh_server::params {
  $port              = 22
  $permit_root_login = 'no'
  $server_key_bits   = '768'

  $ssh_host_rsa_key   = '/etc/ssh/ssh_host_rsa_key'
  $ssh_host_dsa_key   = '/etc/ssh/ssh_host_dsa_key'
  $ssh_host_ecdsa_key = '/etc/ssh/ssh_host_ecdsa_key'
}