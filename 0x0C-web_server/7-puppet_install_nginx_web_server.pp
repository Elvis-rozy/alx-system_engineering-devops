#  Nginx should be listening on port 80
#  When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Hello World!
#  The redirection must be a “301 Moved Permanently”
#  Your answer file should be a Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements

package {'nginx':
  ensure => 'present',
}

exec {'install':
  command  => 'sudo apt-get update ; sudo apt-get -y install nginx',
  provider => shell,
}

exec {'Hello World!':
  command  => 'echo "Hello World!" | sudo dd status=none of=/var/www/html/index.html',
  provider => shell,
}

exec {'sudo sed -i "s/listen 80 default_server;/listen 80 default_server;\\n\\tlocation \/redirect_me {\\n\\t\\treturn 301 https://www.linkedin.com\/;\\n\\t}/" /etc/nginx/sites-available/default':
  provider => shell,
}

exec {'run':
  command  => 'sudo service nginx restart',
  provider => shell,
}
