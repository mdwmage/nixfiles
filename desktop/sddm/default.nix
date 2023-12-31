{ config, lib, ... }:

{
  services.xserver.displayManager.sddm.sugarCandyNix = {
    enable = true;
    
    settings = {
      Background = lib.cleanSource ./background.jpg;
      ScreenWidth = 1920;
      ScreenHeight = 1080;
      FormPosition = "left";
      HaveFormBackground = true;
      PartialBlur = true;
      MainColor = "white";
      AccentColor = "#5f87c7";
      BackgroundColor = "#444";
    };
  }; 
}
