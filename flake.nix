{
  description = "Sacrifice's Manual development environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }: {
    devShells.x86_64-linux.default = let
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    in
      pkgs.mkShell {
        name = "Sacrifice-Manual";
        packages = with pkgs; [
          mdbook
          zsh
        ];
        shellHook = ''
          zsh
        '';
      };
  };
}
