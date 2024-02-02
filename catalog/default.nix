{...}: {
  nix-machine.catalogs.mao = {
    options = ./options.nix;
    homeManagerModules = ./home-manager;
  };
}