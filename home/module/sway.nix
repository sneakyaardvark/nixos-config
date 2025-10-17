{ config, pkgs, lib, ... }:

let
  clr = import ./color.nix;
in 
{
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    checkConfig = false;
    config = rec {
      modifier = "Mod4";
      terminal = "footclient";
      defaultWorkspace = "workspace number 1";
      seat."*".xcursor_theme = "Vanilla-DMZ 30";
      bars = [
        { command = "${pkgs.waybar}/bin/waybar"; }
      ];
      keybindings = let cfg = config.wayland.windowManager.sway.config; mod = cfg.modifier; in lib.mkOptionDefault {
        "${mod}+q" = "kill";
        "${mod}+Tab" = "workspace next";
        "${mod}+Shift+Tab" = "workspace prev";
        "${mod}+y" = "exec ${pkgs.rofi-bluetooth}/bin/rofi-bluetooth";
        "${mod}+d" = "exec ${pkgs.rofi}/bin/rofi -show drun";
        "${mod}+x" = "exec ${pkgs.rofi}/bin/rofi -show menu -modi 'menu:${pkgs.rofi-power-menu}/bin/rofi-power-menu'";
        "${mod}+n" = "exec ${pkgs.swaynotificationcenter}/bin/swaync-client -t -sw";
        # screenshot
        "${mod}+Print" = "exec grim -g \"$(slurp -o -r -c '#ff0000ff')\" -t ppm - | satty --filename - --fullscreen --output-filename ~/Pictures/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png";
        "XF86SelectiveScreenshot" = "exec grim -g \"$(slurp -c '#ff0000ff')\" -t ppm - | satty --filename - --fullscreen --output-filename ~/Pictures/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png";
        # audio
        "XF86AudioRaiseVolume" = "exec ${pkgs.wireplumber}/bin/wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
        "XF86AudioLowerVolume" = "exec ${pkgs.wireplumber}/bin/wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
        "XF86AudioMute" = "exec ${pkgs.wireplumber}/bin/wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
        "XF86AudioMicMute" = "exec ${pkgs.wireplumber}/bin/wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
	# brightness
        "XF86MonBrightnessUp" = "exec ${pkgs.light}/bin/light -A 5";
        "XF86MonBrightnessDown" = "exec ${pkgs.light}/bin/light -U 5";
      };
      modes = let cfg = config.wayland.windowManager.sway.config; in {
        resize = {
          Escape = "mode default";
          Return = "mode default";
          "${cfg.left}" = "resize shrink width 20px";
          "${cfg.down}" = "resize grow height 20px";
          "${cfg.up}" = "resize shrink height 20px";
          "${cfg.right}" = "resize grow width 20px";
        };
      };
      input = {
        "type:touchpad" = {
          dwt = "enabled";
          tap = "enabled";
        };
        "type:pointer" = {
          dwt = "enabled";
          accel_profile = "flat";
          pointer_accel = "0.5";
        };
      };
      output = {
        eDP-1 = {
          bg = "/home/andrew/wallpaper/Paris,_Texas_62.jpg fill";
        };
      };
      window = {
        border = 2;
        titlebar = false;
      };
      fonts = {
        names = [ "Fira Sans" ];
        size = 10.0;
      };
      colors = {
         focused = {
           border = clr.h_white;
           background = clr.h_white;
           text = clr.h_black;
           indicator = clr.h_white;
           childBorder = clr.h_white;
         };
         focusedInactive = {
           border = clr.h_black;
           background = clr.h_black;
           text = clr.h_white;
           indicator = clr.h_black;
           childBorder = clr.h_black;
         };
         unfocused = {
           border = clr.h_black;
           background = clr.h_black;
           text = clr.h_white;
           indicator = clr.h_black;
           childBorder = clr.h_black;
         };
         urgent = {
           border = clr.h_dark_red;
           background = clr.h_dark_red;
           text = clr.h_white;
           indicator = clr.h_dark_red;
           childBorder = clr.h_dark_red;
         };
      };
      floating = {
        modifier = "Mod4";
        border = 2;
        titlebar = false;
        criteria = [
          { window_role = "pop_up"; }
          { window_type = "dialog"; }
          { app_id = "pavucontrol"; }
        ];
      };
      gaps = {
        smartGaps = true;
        inner = 10;
      };
    };
  };
}
