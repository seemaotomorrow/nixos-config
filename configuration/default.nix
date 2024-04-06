{...}: {
  nix-machine.configurations.mao = {
    path = ./.;
    scheme = "flat";
  };
}
