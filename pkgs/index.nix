{ config, pkgs, ... }:

{
  services.flatpak.enable = true;

  environment.systemPackages = with pkgs; [
    zip
    php
    php83Packages.composer
    git
    nil
    wine-wayland
    binutils
    bash
    iw
    libnotify
    file
    pango
    mktemp
    wget
    grim
    slurp
    jansson
    libgccjit
    imagemagick
    gcc
    gtk3
    home-manager
    gtk4
    htop-vim
    gtk2
    xwayland
    nixfmt
    xdg-desktop-portal
    wl-clipboard
    mako
    neofetch
    nodejs
    yarn
    nvtop-amd
    texlive.combined.scheme-full
    playerctl
    unzip
    gnumake
    pavucontrol
    pamixer
    neovim
    lxappearance
    pandoc
    unrar
  ];

  imports = [
    ./syncthing.nix
    ./docker.nix
    ./openssh.nix
    ./printing.nix
    ./yuzu.nix
    ./gnome.nix
    ./kmonad/index.nix
    ./wine.nix
    ./python.nix
    ./tmux.nix
    ./rust.nix
  ];
}
