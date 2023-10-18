# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

let
  kmonad = import /home/jvsr/.config/nix/kmonad.nix;
  unstableTarball = fetchTarball
    "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz";

in {
  imports = [
    ./hardware-configuration.nix
    /home/jvsr/.config/nix/common.nix
    # /home/jvsr/.config/nix/environments/gnome.nix 
    # /home/jvsr/.config/nix/environments/hyprland.nix 
  ];

  xdg.portal.enable = true;
  
  # activate this if you are using hyprland
  # xdg.portal.extraPortals =
  #   [ pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-wlr ];

  hardware.opengl.driSupport = true;

  hardware.opengl.extraPackages = with pkgs; [ amdvlk ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = [ "uinput" "amdgpu" ];
  boot.tmp.cleanOnBoot = true;

  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };
  users.users.jvsr = {
    isNormalUser = true;
    description = "João Vitor Silveira Ribeiro";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.zsh;
  };
  system.stateVersion = "23.05";
}
