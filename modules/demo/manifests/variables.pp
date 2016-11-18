class demo::variables {
  $db_url = "jdbc:oracle:thin:@myhost:1521:orcl"
  $db_username = "scott"
  notify { "${db_username} is your top scope variable":}
 notify { "${db_password} is node scope variable":}
 notify { "${db_url} is class scope variable":}

 }
