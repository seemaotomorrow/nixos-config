{...}: {
  nix-machine.configurations.mao = {
    options = ./options.nix;
    homeManager = ./home-manager;
  };
}