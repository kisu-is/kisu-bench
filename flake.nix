{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    kisu.url = "github:kisu-is/kisu";
  };

  outputs =
    inputs@{ self
    , flake-parts
    , nixpkgs
    , kisu
    , ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];

      perSystem =
        { pkgs, system, ... }:
        {
          devShells = {
            default = pkgs.mkShell {
              packages = with pkgs; [

                hyperfine
                nickel
                kisu.packages.${system}.default
              ];
            };
          };

        };
    };
}
