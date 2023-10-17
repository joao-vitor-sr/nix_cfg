{ config, pkgs, ... }:
let kmonad = import ./kmonad.nix;
in {
  environment.systemPackages = with pkgs; [ kmonad ];

  # KMONAD
  users.groups = { uinput = { }; };
  users.extraUsers.jvsr = { extraGroups = [ "input" "uinput" ]; };
  services.udev.extraRules = ''
    # KMonad user access to /dev/uinput
    KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
  '';
}
