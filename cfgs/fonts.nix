{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    nerdfonts
    noto-fonts-cjk-sans
    noto-fonts
    victor-mono
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override {
      fonts = [ "FiraCode" "Iosevka" "Noto" "VictorMono" ];
    })
    noto-fonts
    noto-fonts-cjk-sans
    victor-mono
    pango
  ];

}
