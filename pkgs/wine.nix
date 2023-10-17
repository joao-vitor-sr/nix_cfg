{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # support 64-bit only
    (wine.override { wineBuild = "wine64"; })

    # wine-staging (version with experimental features)
    wineWowPackages.staging

    # winetricks (all versions)
    winetricks
  ];
}
