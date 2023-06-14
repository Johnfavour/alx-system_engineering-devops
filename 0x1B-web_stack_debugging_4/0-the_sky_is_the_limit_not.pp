# increases the amount of traffic an Nginx server can handle
exec { 'Change nginx limit':
  command  => 'sudo sed -i "s/15/4096/g" /etc/default/nginx; sudo service nginx restart',
  provider => shell,
}
