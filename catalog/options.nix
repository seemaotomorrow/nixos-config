{lib, ...}: let
  catalogOptions = {
    kitty.enable = lib.options.mkEnableOption "kitty";
  };
in {
  options.mao = lib.mkOption {
    type = lib.types.submodule {options = catalogOptions;};
    default = {};
  };
}