{
  ...
}: {
  programs.kitty = {
    enable = true;
    theme = "Tomorrow Night Eighties";
    extraConfig = ''
      font_family JetBrainsMono Nerd Font
      font_size 13.0
      modify_font cell_height +2.6px
    '';
  };

}