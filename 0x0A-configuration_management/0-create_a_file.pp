<<<<<<< HEAD
# Create a file with the content "I love Puppet" and
# set the owner and group to www-data.
# With permissions set to 0744.

file { '/tmp/school':
  ensure  => file,
=======
# Using Puppet, create a file in /tmp.
# Requirements:
# File path is /tmp/school
# File permission is 0744
# File owner is www-data
# File group is www-data
# File contains I love Puppet
file { '/tmp/school':
  ensure  => present,
>>>>>>> c5688ad81f34fe2b2c8d646916e9f35ddf416d42
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
