{config, pkgs, ...}:
{
  home.username = "billyp";
  home.homeDirectory = "/home/billyp";

  home.packages = with pkgs; [

    #misc
    fastfetch

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

  programs.git = {
    enable = true;
    userName = "GalaxAI";
    userEmail = "92019780+GalaXai@users.noreply.github.com";
  };

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
