{ config, pkgs, ... }:
{
  imports = [
    ./python.nix
    ./tools.nix
    ./build.nix
  ];

  nix.settings = {
    cores = 0;
    max-jobs = "auto";
  };
}
