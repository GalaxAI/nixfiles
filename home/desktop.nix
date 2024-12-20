{config, pkgs, ...}:
{
  home.username = "billyp";
  home.homeDirectory = "/home/billyp";

  home.packages = with pkgs; [

    #misc
    fastfetch
    steam
    discord

    #archives
    zip
    unzip
    p7zip
    xz

    #utils
    fzf
    btop
    tree
  ];
   programs.bash ={
    enable = true;
   };
   programs.git = {
    enable = true;
    userName = "GalaxAI";
    userEmail = "92019780+GalaxAI@users.noreply.github.com";
  };

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
