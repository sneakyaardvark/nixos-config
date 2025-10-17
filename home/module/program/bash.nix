{
  programs.bash = {
    enable = true;
    historyControl = [ "ignorespace" ];
    shellAliases = {
      ls = "ls --color=auto -F";
      ll = "ls --color=auto -lA";
      n = "nvim";
    };
    bashrcExtra = ''
      PS1='\[\033[1;32m\][\[\e]0;\u@\h: \w\a\]\u@\h:\w]\$\[\033[0m\] '
    '';
  };

}
