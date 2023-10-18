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

        "laptop" = {
          id =
            "CFPJZ3N-6JLG723-3GQTO2C-F4WJCUJ-GTQVLK3-NKXBQDG-KYFGYDU-ASKSJAY";
        };
        "home_computer" = {
          id =
            "YLT7OJA-FYKXHZM-22RPUWV-B2TNP6A-OAAVOFZ-74IIVWC-W4VTAKP-VRWCYQG";
        };
        "smartphone" = {
          id =
            "FHMPUPO-E2IK7PZ-B6EGDX3-CLFC7ZS-H5HCCW4-IJRF3V3-SFYL3PN-LST2YQG";
        };
      };
      folders = {
        "Obsidian Notes" = {
          path = "/home/jvsr/dcs/obsidian/";
          devices = [ "smartphone" "home_computer" "laptop" ];
        };
        "Wallpapers" = {
          path = "/home/jvsr/pcs/bgs/";
          devices = [ "home_computer" "laptop" ];
        };
      };
    };
  };
}
