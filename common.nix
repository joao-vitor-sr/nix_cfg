{ config, pkgs, ... }:
{

  # flakes
  nix.settings.experimental-features = "nix-command flakes";

  # nixpkgs config
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk  pkgs.xdg-desktop-portal-wlr ];
  
  # environment
  programs.hyprland.enable = true;
  programs.zsh.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # sound
  sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "altgr-intl";
  };
  
  imports = [ ./pkgs/index.nix ./cfgs/fonts.nix ];
}
