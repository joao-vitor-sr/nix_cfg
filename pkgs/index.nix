{ config, pkgs, ... }:

{
  services.flatpak.enable = true;

  environment.systemPackages = with pkgs; [
    zathura
    zip
    git
    nil
    wine-wayland
    obsidian
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
    cargo
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
    swaybg
    yarn
    nvtop-amd
    texlive.combined.scheme-full
    playerctl
    unzip
    gnumake
    discord
    obsidian
    spotify
    bitwarden
    spotify
    pavucontrol
    zoxide
    pamixer
    swww
    neovim
    lutris
    lxappearance
    lsd
    wofi
    pandoc
    unrar
  ];

  imports = [
    ./syncthing.nix
    ./docker.nix
    ./steam.nix
    ./openssh.nix
    ./printing.nix
    ./yuzu.nix
    ./gnome.nix
    ./kmonad/index.nix
    ./wine.nix
    ./python.nix
    ./tmux.nix
  ];
}
