{ config, pkgs, ... }:

{
  services.flatpak.enable = true;
  
  environment.systemPackages = with pkgs; [
    nil
    bat
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
    cargo
    jansson
    libgccjit
    imagemagick
    gcc
    gtk3
    gtk4
    htop-vim
    gtk2
    xwayland
    nixfmt
    (waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
    }))
    xdg-desktop-portal
    wl-clipboard
    mako
    zsh-powerlevel10k
    neofetch
    nodejs
    swaybg
    yarn
    nvtop-amd
    texlive.combined.scheme-full
    playerctl
    unzip
    gnumake
    bitwarden
    zathura
    spotify
    tealdeer
    pavucontrol
    firefox
    zoxide
    pamixer
    git
    swww
    fzf
    neovim
    lutris
    lxappearance
    alacritty
    lazygit
    lsd
    discord
    wofi
    qbittorrent
    obsidian
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
