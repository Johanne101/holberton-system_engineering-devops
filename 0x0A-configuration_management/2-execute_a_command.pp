# Manifest kills process named "killmenow"

exec { 'pkill':
  command  => 'pkill -f killmenow',
  provider => 'shell',
}
