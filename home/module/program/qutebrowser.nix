{
   programs.qutebrowser = {
     enable = true;
     searchEngines = {
       DEFAULT = "https://www.startpage.com/sp/search?query={}";
       dd = "https://duckduckgo.com/?q={}";
       xng = "https://opnxng.com/search?q={}";
       hm = "https://home-manager-options.extranix.com/?query={}";
       nx = "https://search.nixos.org/packages?query={}";
       op = "https://search.nixos.org/options?query={}";
     };
     extraConfig = ''
       c.tabs.padding = {'bottom': 8, 'left': 5, 'right': 5, 'top':7}
     '';
     settings = {
       auto_save.session = true;
       tabs = {
         mousewheel_switching = false;
       };
       colors = {
         webpage = {
           preferred_color_scheme = "dark";
           darkmode.enabled = false;
         };
       };
       content = {
         autoplay = false;
         blocking = {
           enabled = true;
           adblock.lists = [
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_1.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_2.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_3.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_4.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_8.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_12.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_22.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_24.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_27.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_33.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_39.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_45.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_46.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_47.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_48.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_50.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_53.txt"
                  "https://adguardteam.github.io/HostlistsRegistry/assets/filter_55.txt"
           ];
         };
       };
       scrolling = {
         bar = "never";
         smooth = true;
       };
     };
   };
}
