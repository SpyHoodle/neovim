{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.flake-parts.follows = "flake-parts";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];

      perSystem =
        { system, ... }:
        let
          configuration = nixvim.lib.evalNixvim {
            inherit system;

            modules = [
              ./config
              ({ lib, ... }: {
                nixpkgs.source = inputs.nixpkgs;
                nixpkgs.config.allowUnfreePredicate =
                  pkg:
                  builtins.elem (lib.getName pkg) [
                    "copilot-language-server"
                    "presence.nvim"
                  ];
              })
            ];

            extraSpecialArgs = {
              # inherit (inputs) foo;
            };
          };
        in
        {
          # Run `nix flake check .` to verify that your config is not broken
          checks.default = configuration.config.build.test;

          # Lets you run `nix run .` to start nixvim
          packages.default = configuration.config.build.package;
        };
    };
}
