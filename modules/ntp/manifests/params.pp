class ntp::params {

  case $::operatingsystem {
     'ubuntu': {
              $service_name = 'ntp'
              }
      'centos': 
                { $service_name = 'ntpd' } 
 }
 }
