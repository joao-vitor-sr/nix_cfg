{ config, pkgs, ... }:
{
  services.printing.enable = true; # enables printing support via the CUPS daemon
  services.avahi.enable = true; # runs the Avahi daemon
  services.avahi.nssmdns = true; # enables the mDNS NSS plug-in
  services.avahi.openFirewall = true; # opens the firewall for UDP port 5353
  services.printing.drivers = [ pkgs.hplipWithPlugin pkgs.gutenprint pkgs.hplip ];
}
