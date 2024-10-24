{ pkgs, ... }: {
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

          "home_computer" = {
            id =
              "YLT7OJA-FYKXHZM-22RPUWV-B2TNP6A-OAAVOFZ-74IIVWC-W4VTAKP-VRWCYQG";
          };
          "smartphone" = {
            id =
              "GU3EVGS-MZIKSBK-CLLQI4A-RESMHIN-K7PK5SQ-KG5V7RI-T7PZO4K-FA6OZQD";
          };
        };
        folders = {
          "Wallpapers" = {
            path = "/home/jvsr/pcs/bgs/";
            devices = [ "home_computer"  ];
          };
          "Phone Wallpapers" = {
            path = "/home/jvsr/pcs/bgs_phone/";
            devices = [ "home_computer" "smartphone" ];
          };
          "Books" = {
            path = "/home/jvsr/dcs/books/";
            devices = [ "home_computer" "smartphone" ];
          };
          "Memes" = {
              path = "/home/jvsr/pcs/memes/";
              devices = [ "home_computer" "smartphone" ];
            };

          "Tmp" = {
              path = "/home/jvsr/dcs/tmp/";
              devices = [ "home_computer" "smartphone" ];
            };
        };
      };
    };
  };
}
