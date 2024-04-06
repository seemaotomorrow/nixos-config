{
  pkgs,
  lib,
  config,
  ...
}: {
  home.packages = with pkgs; [
    # YubiKey Manager
    # Cross-platform application for configuring any YubiKey over all USB interfaces
    # https://www.yubico.com/support/download/yubikey-manager/
    yubikey-manager
  ];
}
