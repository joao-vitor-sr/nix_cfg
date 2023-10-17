{ config, pkgs, ... }: {
  environment.systemPackages =
    let pythonEnv = pkgs.python3.withPackages (p: with p; [ regex pip setuptools]);
    in [ pythonEnv ];

}
