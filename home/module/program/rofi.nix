{ pkgs, ... }:

{
  programs.rofi = {
      enable = true;
      package = pkgs.rofi-wayland;
      font = "Fira Sans 12";
      terminal = "${pkgs.foot}/bin/foot";
      extraConfig = {
        display-drun = "Apps:";
        modes = [
          "drun"
          "run"
        ];
      };
      plugins = [
        pkgs.rofi-pulse-select
        pkgs.rofi-bluetooth
        pkgs.rofi-power-menu
      ];
    };
}
