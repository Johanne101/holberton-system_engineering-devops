# Client configuration file (w/ Puppet)
# Adds changes to ssh_config file
include stdlib

file_line { 'BatchMode':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
}

file_line { 'IdentifyFile':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}
