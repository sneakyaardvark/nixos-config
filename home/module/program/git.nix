{
  programs.git = {
    enable = true;
    userEmail = "81195290+sneakyaardvark@users.noreply.github.com";
    userName = "Sneaky Aardvark";
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      pull = {
        rebase = true;
      };
      core = {
        whitespace = "trailing-space,space-before-tab";
	autocrlf = "input";
      };
      "credential \"https://github.com\"" = {
        username = "sneakyaardvark";
      };
     # url = {
     #   "git@git.sr.ht:" = {
     #     insteadOf = [
     #       "https://git.sr.ht/"
     #     ];
     #   };
     #   "git@github.com:" = {
     #     insteadOf = [
     #       "https://github.com/"
     #     ];
     #   };
     #   "git@gitlab.com:" = {
     #     insteadOf = [
     #       "https://gitlab.com/"
     #     ];
     #   };
     # };
    };
  };
}
