{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs;
    [
      (waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      }))
    ];
  programs.hyprland.enable = true;
}
