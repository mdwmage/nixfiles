{ config, pkgs, ... }:

{
  # Import wm configs
  imports = [
    # ./berrywm
    ./nvidia.nix
    ./gnome
    # ./hyprland
  ];

    # Enable X11 and nvidia drivers
  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
    logFile = "/var/log/Xorg.0.log";
  };

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable display manager
  services.xserver.displayManager = {
    gdm.enable = true;
    gdm.wayland = false;
    defaultSession = "gnome";
  };
  
}