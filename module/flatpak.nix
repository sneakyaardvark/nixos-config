{ pkgs, ... }:

{
   services.flatpak.enable = true;
   xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
   xdg.portal.wlr.enable = true;
   xdg.portal.config.common.default = "gtk";
}
