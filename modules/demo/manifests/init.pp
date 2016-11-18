class demo {
  file {'/etc/welcome' :
          ensure => file,
          owner  => root,
          group  => root,
         content => template('demo/welcome.erb'), 
         mode   => '0644',
       }
  file {'/etc/test' :
       ensure  => 'directory',
       mode   => '0744',
       owner  => root,
       group  => root,
   }
  
  package {['tree','bind-utils'] :
      ensure => present,
      
  }

 include demo::rc
 
}
