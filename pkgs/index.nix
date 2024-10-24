{ pkgs, ... }:

{
  services.flatpak.enable = true;


  environment.systemPackages = with pkgs; [
    (import /home/jvsr/.config/nixpkgs/ani-cli.nix)
    (import /home/jvsr/.config/nixpkgs/pretty-php.nix)
    (import /home/jvsr/.config/nixpkgs/php-cs-fixer.nix)
    (import /home/jvsr/.config/nixpkgs/texlab.nix)
    (import /home/jvsr/.config/nixpkgs/swayimg.nix)
    (import /home/jvsr/.config/nixpkgs/hyprpicker.nix)
    (import /home/jvsr/.config/nixpkgs/serve-d.nix)
    neovim
    jmtpfs
    coreutils
    rPackages.gbm
    glibc
    go
    gruvbox-gtk-theme
    mpv
    dconf
    zip
    floorp
    php
    php83Packages.composer
    git
    nil
    wine-wayland
    binutils
    bash
    webcord
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
    wayland
    wayland-protocols
    nixfmt
    xdg-desktop-portal
    wl-clipboard
    nodejs
    nodePackages.prettier
    yarn
    nvtop-amd
    texlive.combined.scheme-full
    playerctl
    cmake
    pkg-config
    unzip
    gnumake
    pavucontrol
    clang
    clang-tools
    rocmPackages.llvm.clang-unwrapped
    pamixer
    pandoc
    unrar
  ];

  imports = [
    ./syncthing.nix
    ./docker.nix
    ./openssh.nix
    ./printing.nix
    ./gnome.nix
    ./kmonad/index.nix
    ./wine.nix
    ./python.nix
    ./rust.nix
    ./steam.nix
    ./jackett.nix
  ];
}
