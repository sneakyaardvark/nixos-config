let
  clr = import ../color.nix;
in 
{
   programs.waybar = {
     enable = true;
     settings = {
       mainBar = {
         height = 30;
         modules-left = [
           "sway/workspaces"
           "sway/mode"
           "idle_inhibitor"
         ];
         modules-center = [
           "clock"
         ];
         modules-right = [
           "tray"
           "network"
           "bluetooth"
           "pulseaudio"
           "backlight"
           "battery"
         ];
         "sway/workspaces" = {
           format = "{name}";
           tooltip = false;
         };
         "sway/mode" = {
           format = "{}";
           tooltip = false;
         };
         "tray" = {
           icon-size = 18;
           spacing = 8;
         };
         "idle_inhibitor" = {
           format = "{icon}";
           format-icons = {
             activated = " ";
             deactivated = " ";
           };
         };
         "clock" = {
           timezone = "America/Los_Angeles";
           format-alt = "{:%Y-%m-%d}";
           tooltip-format = "<tt><small>{calendar}</small></tt>";
         };
         "backlight" = {
           format = "{percent}% ";
         };
         "battery" = {
           states = {
             warning = 30;
             critical = 15;
           };
           format = "{capacity}% {icon}";
           format-charging = "{capacity}% 󰂄";
           format-plugged = "";
           format-alt = "{time} {icon}";
           tooltip-format = "{capacity}% / {timeTo}";
           format-icons = [ "" "" "" "" "" ];
         };
         "network" = {
           format-wifi = "{essid} ({signalStrength}5)";
           format-ethernet = "";
           format-linked = "No IP";
           format-disconnected = "⚠";
           
         };
         "pulseaudio" = {
           format = "{volume}% {icon} {format_source}";
           format-bluetooth = "{volume}% {icon} {format_source}";
           format-bluetooth-muted = " {icon} {format_source}";
           format-muted = " {format_source}";
           format-source = "{volume}% ";
           format-source-muted = "";
           format-icons = {
             headphone = "";
             hands-free = "";
             headset = "";
             phone = "";
             portable = "";
             car = "";
             default = [ "" "" "" ];
             };
        };
       };
     };
     style = ''
        * {
            border: none;
            border-radius: 0;
            font-family: "Fira Sans";
            font-size: 14px;
            min-height: 0;
            color: ${clr.h_black};
        }

        window#waybar {
            background-color: transparent;
            border-bottom: none;
            color: ${clr.h_black};
            transition-property: background-color;
            transition-duration: .5s;
        }

        window#waybar.hidden {
            opacity: 0.2;
        }

        #workspaces button {
            padding: 0.2rem 0.5rem;
            background-color: transparent;
            color: ${clr.h_black};
            /* Use box-shadow instead of border so the text isn't offset */
            box-shadow: inset 0 -3px transparent;
            border-radius: 0.4rem;
        }

        /* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
        #workspaces button:hover {
            background: rgba(27, 25, 24, 0.5);
            box-shadow: inset 0 -3px ${clr.h_blue};
        }

        #workspaces button.focused {
            background-color: ${clr.h_green};
        }

        #workspaces button.urgent {
            background-color: ${clr.h_magenta};
        }

        #mode {
            background-color: ${clr.h_yellow};
            border-radius: 0.4rem;
        }

        #idle_inhibitor {
            padding: 0.2rem 0.5rem;
            border-radius: 0.4rem;
        }

        #idle_inhibitor.activated {
            background-color: ${clr.h_green};
        }

        #bluetooth,
        #backlight,
        #battery,
        #network,
        #pulseaudio,
        #tray,
        #mode,
        #idle_inhibitor {
            padding: 0.2rem 0.5rem;
            margin: 0 0.2rem;
            color: ${clr.h_black}
        }

        #battery.warning {
          background: ${clr.h_yellow};
        }

        #battery.critical {
          background: ${clr.h_dark_red};
        }

        .modules-left, 
        .modules-center, 
        .modules-right {
          padding: 0.5rem 0.5rem;
          margin: 2px 6px 8px;
          background-color: ${clr.h_white};
          border-radius: 0.7rem;
        }
        /* If workspaces is the rightmost module, omit right margin */
        .modules-right > widget:last-child > #workspaces {
            margin-right: 0;
        }

        #clock {
          font-size: 16px;
        }


        @keyframes blink {
            to {
                background-color: #5fafff;
                color: #000000;
            }
        }

        #tray {
            background-color: ${clr.h_green};
            margin: 0 10px;
            border-radius: 0.4rem;
        }

        #taskbar {
          color: ${clr.h_black};
        }

        #taskbar button {
          padding: 0 8px;
        }

        #taskbar button.active {
          background-color: ${clr.h_green};
          border-radius: 0.4rem;
        }
     '';
   };
}
