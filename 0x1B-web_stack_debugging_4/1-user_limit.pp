#Change the OS configuration so that it is possible to login with
#the holberton user and open a file without any error message.
exec { 'Change hard':
  command  => 'sudo sed -i \'s/holberton hard nofile 5/holberton hard nofile 4096/\' /etc/security/limits.conf',
  provider => shell,
}
exec { 'Change soft':
  command  => 'sudo sed -i \'s/holberton soft nofile 4/holberton soft nofile 4096\' /etc/security/limits.conf',
  provider => shell,
}
