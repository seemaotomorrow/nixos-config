{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    flake-parts.url = "github:hercules-ci/flake-parts";
    squirmy.url = "github:squirmy/nixos-config";
  };

  outputs = inputs @ {self, ...}:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["aarch64-darwin" "x86_64-darwin"];
      imports = [
        ./lib
        inputs.squirmy.flakeModule
        ./catalog
      ];

      nix-machine.macos."Ms-MacBook-Pro" = {
        nix-machine = {
          username = "maomingjian";
          homeDirectory = "/Users/maomingjian";
          system = "x86_64-darwin";
        };

        squirmy = {
          nix.enable = true;
          trampoline.enable = true;
        };

        mao = {
          kitty.enable = true;
        };
      };
    };
}