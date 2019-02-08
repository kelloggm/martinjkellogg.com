with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "site";
  nativeBuildInputs = [
    jekyll
  ];
}
