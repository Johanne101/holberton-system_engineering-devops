# file wp-settings.phpp typo-error
# I test it so it can find the file and then rename it with the command sed
# Finally i give the path for all the sbin and bin files so the system can reboot
exec { 'puppet fix typo':
  command => "sed -i 's/phpp/php/' /var/www/html/wp-settings.php",
  onlyif  => 'test -f /var/www/html/wp-settings.php',
  path    => '/usr/bin:/usr/sbin:/bin',
}
->
exec {'restart':
  command => '/usr/sbin/service apache2 restart',
}
