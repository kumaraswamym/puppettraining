class ssh inherits ssh::params{
   package {'openssh-server':
     ensure  => present,
  }

  file {'/etc/ssh/sshd_config' :
      ensure  => file,
      owner   => root,
      group   => root,
      source  => 'puppet:///modules/ssh/sshd_config',
      mode    => '0755',
      require => Package['openssh-server'],
    #  notify  => Service['ssh-service'],
    }

  service {'ssh-service':
       name   => $ssh_name,
       ensure => running,
       enable => true,
       subscribe => File['/etc/ssh/sshd_config'],
  } 

}
