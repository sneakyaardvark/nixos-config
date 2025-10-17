{ pkgs, ... }:

let
  clr = import ./color.nix;
in 
{
  programs.zathura = {
    enable = true;
    options = {
      font = "Fira Sans 10";
      recolor = false;
      scroll-step = 50;
      selection-clipboard = "clipboard";
    };
  };
}
