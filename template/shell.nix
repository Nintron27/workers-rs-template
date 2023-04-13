let
  rust-overlay = builtins.fetchTarball "https://github.com/oxalica/rust-overlay/archive/master.tar.gz";
  pkgs = import <nixpkgs> {
    overlays = [(import rust-overlay)];
  };
  toolchain = pkgs.rust-bin.fromRustupToolchainFile ./toolchain.toml;
in
  pkgs.mkShell {
    packages = [
      toolchain

      pkgs.pkg-config
      pkgs.openssl
      pkgs.rust-analyzer-unwrapped
    ];

    RUST_SRC_PATH = "${toolchain}/lib/rustlib/src/rust/library";

    shellHook = ''
      export PATH="$PATH:$HOME/.cargo/bin"
    '';
  }
