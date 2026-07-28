{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    sideloadInitLua = true;
    withRuby = false;
    withPython3 = false;
    extraPackages = with pkgs; [
      nixfmt
      nixd
      lua-language-server
    ];
  };
}
