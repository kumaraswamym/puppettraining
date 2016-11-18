class sysusers {

   user { 'admin' : 
     ensure   => present,
     shell    => '/bin/bash',
     home     => '/home/admin',
     groups     => ['sudoers','root', 'dummy'],
     managehome => true,
     password => 'admin123',
    }

   group { 'sudoers':
        ensure => present,
     }
  group { 'dummy':
        ensure => present,
     }

 }
