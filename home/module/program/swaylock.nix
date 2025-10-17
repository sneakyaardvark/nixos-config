let
  clr = import ../color.nix;
in 
{
   programs.swaylock = {
     enable = true;
     settings = {
       # ignore-empty-password = true;
       font = "Fira Sans";
       font-size = 14;
       indicator-caps-lock = true;
       color = clr.background;
       indicator-radius = 110;
       indicator-thickness = 55;

       inside-color = clr.green;
       inside-clear-color = clr.yellow;
       inside-caps-lock-color = clr.lavender;
       inside-ver-color= clr.blue;
       inside-wrong-color = clr.dark_red;
       key-hl-color = clr.green;
       bs-hl-color = clr.magenta;
       line-color = clr.black;
       line-clear-color = clr.yellow + "FF";
       line-caps-lock-color = clr.black + "FF";
       line-ver-color = clr.blue + "FF";
       line-wrong-color = clr.dark_red + "FF";
       ring-color = clr.black;
       ring-clear-color = clr.yellow;
       ring-caps-lock-color = clr.lavender;
       ring-ver-color = clr.blue;
       ring-wrong-color = clr.dark_red;
       separator-color = clr.black;
       text-color = clr.green;
       text-clear-color = clr.white;
       text-caps-lock-color = clr.white;
       text-ver-color = clr.white;
       text-wrong-color = clr.black;
     };
   };
}
