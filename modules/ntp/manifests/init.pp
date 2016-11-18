class ntp {

  package { 'ntp' :
     ensure => present,
   }
 include ntp::params
 include ntp::service
 include ntp::file
}
