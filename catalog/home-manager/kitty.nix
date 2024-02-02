{
  lib,
  config,
  ...
}:
lib.mkIf config.mao.kitty.enable {
  programs.kitty = {
    enable = true;
  };

}