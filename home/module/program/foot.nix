let
  clr = import ../color.nix;
in 
{
  programs.foot = {
    server.enable = true;
    enable = true;
    settings = {
      main = {
        font = "Fira Code Nerd Font:size=12";
      };
      colors = {
        foreground = clr.white;
        background = clr.background;
        regular0 = clr.black;
        regular1 = clr.dark_red;
        regular2 = clr.green;
        regular3 = clr.yellow;
        regular4 = clr.blue;
        regular5 = clr.magenta;
        regular6 = clr.dark_cyan;
        regular7 = clr.white;
      };
    };
  };
}
