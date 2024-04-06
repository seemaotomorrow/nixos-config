{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nix-machine.url = "github:squirmy/nix-machine";
  };

  outputs = inputs @ {self, ...}:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["aarch64-darwin" "x86_64-darwin"];
      imports = [
        inputs.nix-machine.flakeModule
        ./configuration
      ];

      nix-machine.macos."Ms-MacBook-Pro" = {
        nix-machine = {
          username = "maomingjian";
          homeDirectory = "/Users/maomingjian";
          nixpkgs.hostPlatform = "x86_64-darwin";
          shells.zsh.enable = true;
        };
      };
    };
}