# == Class: qbittorrent::service
#
class qbittorrent::service (
  $service_enable = $qbittorrent::service_enable,
  $service_name   = $qbittorrent::service_name,
  $user           = $qbittorrent::user,
  $group          = $qbittorrent::user,
  $executable     = $qbittorrent::executable,
) {
  if $service_enable {
    include ::systemd

    systemd::unit_file { "${service_name}.service":
      content => template('qbittorrent/systemd.erb'),
      enable  => true,
      active  => true,
    }
  }
}
