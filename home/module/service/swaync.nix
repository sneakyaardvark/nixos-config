{
   services.swaync = {
      enable = true;
      settings = {
        positionX = "right";
        positionY = "top";
        control-center-radius = 8;
        fit-to-screen = true;
        layer-shell = true;
        layer = "overlay";
        control-center-layer = "overlay";
        widgets = [
          "inhibitors"
          "dnd"
          "mpris"
          "notifications"
        ];
      };
   };
}
