#  Nginx should be listening on port 80
#  When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Hello World!
#  The redirection must be a “301 Moved Permanently”
#  Your answer file should be a Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements

package {'nginx':
  ensure => 'installed',
}

file_line { 'rewrite redirect':
	ensure	=> 'present',
	path	=> '/etc/nginx/sites-available/default',
	after	=> 'server_name_;',
	line	=> 'rewrite ^/redirect_me https://www.linkedin.com;',
	require	=> Package['nginx'],
	notify	=> Service['nginx'],
}

file { '/var/www/html/index.nginx-debian.html';
	content	=> 'Hello World!',
	require	=> Package['nginx'],
}

service { 'nginx':
	ensure	=> 'running',
	require	=> file_line['rewrite redirect'],
}
