{ pkgs, ... }:

let
   lockcmd = "${pkgs.swaylock}/bin/swaylock --daemonize";
   unlockcmd = "pkill -SIGUSR1 swaylock";

   timeoutcmd = "${pkgs.sway}/bin/swaymsg \"output * dpms off\"";
   resumecmd = "${pkgs.sway}/bin/swaymsg \"output * dpms on\"";
   suspendcmd = "${pkgs.systemd}/bin/systemctl suspend";
in {
   services.swayidle = {
      enable = true;
      systemdTarget = "sway-session.target";
      events = [
        {
	   event = "before-sleep";
	   command = lockcmd;
	}
	{
	   event = "lock";
	   command = lockcmd;
	}
	{
	   event = "unlock";
	   command = unlockcmd;
	}
	{
	   event = "after-resume";
	   command = resumecmd;
	}
      ];
      timeouts = [
        {
	   timeout = 600; # 10m
	   command = lockcmd;
	}
	{
	   timeout = 1200; # 20m
	   command = timeoutcmd;
	   resumeCommand = resumecmd;
	}
	{
	   timeout = 1800; # 30m
	   command = suspendcmd;
	}
      ];
   };
}
