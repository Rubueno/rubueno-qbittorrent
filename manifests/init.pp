# == Class: qbittorrent
#
class qbittorrent (
  $manage_epel    = $qbittorrent::params::manage_epel,
  $package        = $qbittorrent::params::package,
  $user           = $qbittorrent::params::user,
  $group          = $qbittorrent::params::user,
  $service_enable = $qbittorrent::params::service_enable,
  $service_name   = $qbittorrent::params::service_name,
  $executable     = $qbittorrent::params::executable,
) inherits qbittorrent::params {

  contain qbittorrent::install
  contain qbittorrent::service

  Class['qbittorrent::install'] ~>
  Class['qbittorrent::service']
}
