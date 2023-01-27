with import <nixpkgs> {};

let
  # masuperlib-src = fetchTarball "TODO github url to v0.1.tar.gz";
  # masuperlib-src = ../masuperlib;
  masuperlib-src = fetchTarball
  https://github.com/AyGwair/masuperlib/archive/refs/tags/v0.1.tar.gz;

  masuperlib = callPackage masuperlib-src {};

in stdenv.mkDerivation {
    name = "masuperapp";
    src = ./.;
    nativeBuildInputs = [ cmake ];
    buildInputs = [ masuperlib ];
}

