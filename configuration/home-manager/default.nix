{pkgs, ...}: {
  imports = [
    ./kitty.nix
    ./fonts.nix
  ];

  programs.starship.enable = true;
  home.sessionVariables = {CLICOLOR = "1";};

  programs.zsh.oh-my-zsh.enable = true;
  home.packages = [ pkgs.python3 ];
}