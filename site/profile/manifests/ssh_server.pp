class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDUPdSA5hXmY6fJYtJF3iyTZKyxydfDy27ceBOhOsVEdTugBgxiAYCIHULBD7BygURWgJdFWFZro0JzzPAPynyo0Qx98hFCRYt9YWLjR/G2FRXplAeYeyMddsE26EZarjearfKDZ5QaHKtCweCW3EO7vrCfjlmHvmgV2l0HPcXwVz7VBSWMZGnmAIUuidE9pfDl+5qiqYeNMdcRgPZLUtGVI2CEMWBBKcDIYu/v6vy/rCQ620FFpb9CWH6xHZEe3TdW40q2PK3Htn78vIS2Ec7594m5Fucc97bGuxzcpDdDJ4cB7PVjgu0xFvkxE7DvJi0teNqYt6j1WSPFvzxp8Hj5',
  }
}
