{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      nixfmt
      nixd
      lua-language-server
    ];
  };
}
