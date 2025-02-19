{
  description = "Typst environment";
  nixConfig.bash-prompt = "\[nix-develop\]$ ";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    utils,
    ...
  } @ inputs:
    utils.lib.eachDefaultSystem (
      system: let
        p = import nixpkgs {inherit system;};
        fonts = with p; [
          fira
        ];
        fontPaths = (builtins.map (x: x + "/share/fonts/opentype") fonts) ++ (builtins.map (x: x + "/share/fonts/truetype") fonts);
        fontParam = p.lib.concatStringsSep ":" fontPaths;
      in {
        devShell = p.mkShell.override {stdenv = p.stdenv;} rec {
          packages = with p;
            [
              typst
              typst-lsp # Thank you rust for being so great
              typst-live
            ]
            ++ fonts;

          shellHook = ''
            export TYPST_FONT_PATHS=${fontParam}
          '';

          name = "Typst build";
        };
      }
    );
}
