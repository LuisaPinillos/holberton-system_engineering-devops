#Change the OS configuration so that it is possible to login with
#the holberton user and open a file without any error message.
exec { 'Change hard':
  command => "sed -i 's/nofile 5/ nofile 4096/' /etc/security/limits.conf",
  path    => '/bin'
}

exec { 'Change soft':
  command => "sed -i 's/nofile 4/ nofile 2000/' /etc/security/limits.conf",
  path    => '/bin'
}
