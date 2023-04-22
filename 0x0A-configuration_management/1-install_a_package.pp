<<<<<<< HEAD
# Install Flask version: 2.1.0 using pip3
package {'Flask':
  ensure   => '2.1.0',
  provider => 'pip3'
=======
# Using Puppet, install flask from pip3.
# Requirements:
# Install flask
# Version must be 2.1.0
package { 'flask':
  ensure   => '2.1.0',
  provider => pip3,
>>>>>>> c5688ad81f34fe2b2c8d646916e9f35ddf416d42
}
