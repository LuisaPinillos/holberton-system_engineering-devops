#Change the OS configuration so that it is possible to login with
#the holberton user and open a file without any error message.
exec { 'Change hard':
  command  => 'sudo sed -i \'s/nofile 5/nofile 4096/\' /etc/security/limits.conf',
  provider => shell,
}
exec { 'Change soft':
  command  => 'sudo sed -i \'s/nofile 4/nofile 4096\' /etc/security/limits.conf',
  provider => shell,
}
