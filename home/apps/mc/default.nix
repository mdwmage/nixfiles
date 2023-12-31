{ config, pkgs, ... }:

let
  prismLauncherDesktop = {
    name = "Prism Launcher";
    genericName = "Minecraft Launcher";
    exec = ''sh -c "nv-offload prismlauncher"'';
    terminal = false;
  };
in {
  home.packages = with pkgs; [ prismlauncher ];
  xdg.desktopEntries.prismlauncher = prismLauncherDesktop;
}
