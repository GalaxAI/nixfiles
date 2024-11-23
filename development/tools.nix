{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    code-cursor
    pre-commit
  ];
} 
