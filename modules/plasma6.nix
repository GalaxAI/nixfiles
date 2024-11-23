{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    displayManager = {
      sddm = {
        enable = true;
	wayland.enable = true;
	settings = {
	  General = {
	    InputMethod = ""; # Disable on-screen keybaord
	   };
	};
     };
    };
    desktopManager.plasma6 = {
      enable = true;
      enableQt5Integration = true;
    };
  };

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    elisa
    gwenview
    okular
    oxygen
    khelpcenter
    konsole
    kate
    plasma-browser-integration
    print-manager
  ];

  environment.systemPackages = with pkgs.kdePackages; [
    plasma-desktop
    dolphin
    kwin
    plasma-systemmonitor
    plasma-workspace
    plasma-workspace-wallpapers
    systemsettings
  ];
}
