{ pkgs, ... }:

{
   hardware.sane.enable = true;
   hardware.sane.extraBackends = [ pkgs.sane-airscan pkgs.hplipWithPlugin ];
   services.udev.packages = [ pkgs.sane-airscan ];
   services.ipp-usb.enable = true;
}
