let
  pkgs_main = import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/25.05.tar.gz";
    sha256 = "1zzjrcpqyir2q2bzaxl2sk5vfq0sv4m8xx0q9bf21dsfafcv42qr";
  }) { };
in
pkgs_main.mkShell {
  buildInputs = [
    pkgs_main.nodejs_22
    pkgs_main.elmPackages.elm
  ];

  shellHook = ''
  '';
}
