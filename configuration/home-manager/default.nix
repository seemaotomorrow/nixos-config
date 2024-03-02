{...}: {
  imports = [
    ./kitty.nix
    ./fonts.nix
  ];

  programs.starship.enable = true;
}