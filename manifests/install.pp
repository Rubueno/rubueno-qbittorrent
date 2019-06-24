# == Class: qbittorrent::install
#
class qbittorrent::install (
  $manage_epel = $qbittorrent::manage_epel,
  $package     = $qbittorrent::package,
  $user        = $qbittorrent::user,
  $group       = $qbittorrent::user,
) {

  if $manage_epel {
    package { 'epel-release':
      ensure => 'installed',
    }
  }

  package { $package:
    ensure => installed,
  }

  group { $group:
    ensure => present,
  }

  user { $user:
    ensure     => present,
    shell      => '/sbin/nologin',
    groups     => $group,
    managehome => true,
  }
}
