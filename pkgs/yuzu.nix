{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [ yuzu-mainline ];
}
