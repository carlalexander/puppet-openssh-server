# OpenSSH Server Module

Puppet module designed to manage OpenSSH Server.

## Requirements

Currently only tested using Ubuntu Quantal.

## Setup

To install and bootstrap your OpenSSH server, simply add the class defintion:

    class { 'openssh_server': }