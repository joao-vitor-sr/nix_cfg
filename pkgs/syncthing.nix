{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [ syncthing ];
  services = {
    syncthing = {
      enable = true;
      user = "jvsr";
      dataDir = "/home/jvsr/dcs";
      overrideDevices = true;
      overrideFolders = true;
      devices = {
        "home_computer" = {
          id =
            "TFNFXWI-AGLJNC7-4BFAWNJ-NNGLTVK-AN3PZGS-EL6PPNM-J4F6222-BZSL4AP";
        };
        "smartphone" = {
          id =
            "FHMPUPO-E2IK7PZ-B6EGDX3-CLFC7ZS-H5HCCW4-IJRF3V3-SFYL3PN-LST2YQG";
        };
      };
      folders = {
        "Obsidian Notes" = {
          path = "/home/jvsr/dcs/obsidian/";
          devices = [ "smartphone" "home_computer" ];
        };
        "Wallpapers" = {
          path = "/home/jvsr/pcs/bgs/";
          devices = [ "home_computer" ];
        };
      };
    };
  };
}
