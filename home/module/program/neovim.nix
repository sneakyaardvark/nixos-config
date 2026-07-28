{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    sideloadInitLua = true;
    extraPackages = with pkgs; [
      nixfmt
      nixd
      lua-language-server
    ];
  };
}
