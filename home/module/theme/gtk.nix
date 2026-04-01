{ pkgs, ... }:

{
   gtk = {
     enable = true;
     font = {
       name = "Fira Sans";
       package = pkgs.fira;
       size = 10;
     };
     theme = {
       name = "Breeze-Dark";
       package = pkgs.kdePackages.breeze-gtk;
     };
     iconTheme = {
       name = "Papirus-Dark";
       package = pkgs.papirus-icon-theme;
     };
     gtk3 = {
       extraCss = ''
       .titlebar,
       .titlebar .background
       {
         border-radius: 0;
       }

       decoration
       {
         box-shadow: none;
       }

       decoration:backdrop
       {
         box-shadow: none;
       }
       '';
     };
   };
}
