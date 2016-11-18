class ssh::params {

 case $::osfamily {
    'RedHat' : { $ssh_name = 'sshd' }
    'Debian' : { $ssh_name = 'ssh' }
   default : { fail('OS is not supported by puppet module') }
  }
}
