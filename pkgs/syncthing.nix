{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [ syncthing ];
  services = {
    syncthing = {
      enable = true;
      user = "jvsr";
      dataDir = "/home/jvsr/dcs";
      overrideDevices = true;
      overrideFolders = true;
      settings = {
        devices = {
          "smartphone" = {
            id =
              "FHMPUPO-E2IK7PZ-B6EGDX3-CLFC7ZS-H5HCCW4-IJRF3V3-SFYL3PN-LST2YQG";
          };
        };
        folders = {
          "Obsidian Notes" = {
            path = "/home/jvsr/dcs/obsidian/";
            devices = [ "smartphone" ];
          };
        };
      };
    };
  };
}
