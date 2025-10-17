let
  background = "1b1918"; # #1b1918
  black = "262626"; # #262626
  dark_red = "e31c25"; # #e31c25
  green = "5faf5f"; # #5faf5f
  yellow = "ffd700"; # #ffd700
  blue = "5fafff"; # #5fafff
  magenta = "d75f87"; # #d75f87
  dark_cyan = "00005f"; # #00005f
  white = "c5c8c6"; # #c5c8c6

  foreground_old = "d9d8d8"; # #d9d8d8
  background_old = "231f20"; # #231f20
  blue2 = "009ddc"; # #009ddc
  bright_red = "ee2e24"; # #ee2e24
  lavender = "8787ff"; # #8787ff

  h_background = "#${background}";
  h_black = "#${black}";
  h_dark_red = "#${dark_red}";
  h_green = "#${green}";
  h_yellow = "#${yellow}";
  h_blue = "#${blue}";
  h_magenta = "#${magenta}";
  h_dark_cyan = "#${dark_cyan}";
  h_white = "#${white}";

  h_bright_red = "#${bright_red}";
  h_lavender = "#${lavender}";
in {
  inherit background;
  inherit black;
  inherit dark_red;
  inherit green;
  inherit yellow;
  inherit blue;
  inherit magenta;
  inherit dark_cyan;
  inherit white;

  inherit lavender;
  
  inherit h_background;
  inherit h_black;
  inherit h_dark_red;
  inherit h_green;
  inherit h_yellow;
  inherit h_blue;
  inherit h_magenta;
  inherit h_dark_cyan;
  inherit h_white;

  inherit h_lavender;
}
