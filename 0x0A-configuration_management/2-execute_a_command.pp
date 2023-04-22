<<<<<<< HEAD
# Creates a manifest that kills a process named killmenow.

exec { 'killmenow':
  command => 'pkill -f killmenow',
  path    => ['/usr/bin', '/usr/sbin', '/bin'],
  onlyif  => 'pgrep -f killmenow',
=======
# Using Puppet, create a manifest that kills a process named killmenow.
# Requirements:
# Must use the exec Puppet resource
# Must use pkill
exec { 'killing a process using pkill':
  command  => 'pkill -9 killmenow',
  path     => '/usr/bin:/bin',
  onlyif   => 'pgrep killmenow',
  provider => shell,
>>>>>>> c5688ad81f34fe2b2c8d646916e9f35ddf416d42
}
