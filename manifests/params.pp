class openssh_server::params {
  $port              = 22
  $permit_root_login = 'no'
  $server_key_bits   = '768'

  $ssh_host_rsa_key   = '/etc/ssh/ssh_host_rsa_key'
  $ssh_host_dsa_key   = '/etc/ssh/ssh_host_dsa_key'
  $ssh_host_ecdsa_key = '/etc/ssh/ssh_host_ecdsa_key'
}