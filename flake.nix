{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nix-machine.url = "github:squirmy/nix-machine";
    flake-parts.url = "github:hercules-ci/flake-parts";

    # Used in the pre-commit hook
    devshell.url = "github:numtide/devshell";
    devshell.inputs.nixpkgs.follows = "nixpkgs";
    flake-root.url = "github:srid/flake-root";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";
    pre-commit-hooks-nix.url = "github:cachix/pre-commit-hooks.nix";
    pre-commit-hooks-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["aarch64-darwin" "x86_64-darwin"];
      imports = [
        inputs.devshell.flakeModule
        inputs.treefmt-nix.flakeModule
        inputs.flake-root.flakeModule
        inputs.pre-commit-hooks-nix.flakeModule
        inputs.nix-machine.flakeModule
        ./configuration
        ./devshell.nix
      ];

      nix-machine.macos."Maos-MBP" = {
        nix-machine = {
          username = "mao";
          homeDirectory = "/Users/mao";
          nixpkgs.hostPlatform = "aarch64-darwin";
          shells.zsh.enable = true;
        };

        mao = {
          git = {
            userName = "Mia Mao";
            userEmail = "seemaotomorrow@gmail.com";
          };
        };
      };
    };
}
