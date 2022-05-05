#Change the open file limit for Nginx worker processes.
exec { 'change the limit and restart Nginx':
  command  => 'sudo sed -i \'s/15/4096/\' /etc/default/nginx && sudo service nginx restart',
  provider => shell,
}
