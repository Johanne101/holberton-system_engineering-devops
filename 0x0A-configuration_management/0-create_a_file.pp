# Creates and manages a File in file path /tmp/ with requirements
file { '/tmp/school':
ensure  => 'present',
path    => '/tmp/school',
mode    => '0744',
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet'
}
