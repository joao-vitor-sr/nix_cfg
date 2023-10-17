{ config, pkgs, ... }:
{
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  
  environment.systemPackages = with pkgs; [
    openssh
  ];

}
