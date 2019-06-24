class qbittorrent::params {
  $manage_epel    = true
  $package        = 'qbittorrent-nox.x86_64'
  $user           = 'qbittorrent'
  $service_enable = true
  $service_name   = 'qbittorrent'
  $executable     = '/usr/bin/qbittorrent-nox'
}
