#Change the OS configuration so that it is possible to login with
#the holberton user and open a file without any error message.
exec { 'Change hard':
  command  => 'sudo sed -i \'s/core 100000/nofile 4096/\' /etc/security/limits.conf',
  provider => shell,
}
exec { 'Change soft':
  command  => 'sudo sed -i \'s/core 0/nofile 4096\' /etc/security/limits.conf',
  provider => shell,
}
