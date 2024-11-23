{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Core Build Tools
    gcc
    clang
    cmake
    ninja
    gnumake
    pkg-config
    autoconf
    automake
    libtool

    # Rust
    rustup  # Includes cargo, rustc, etc.
    rust-analyzer # LSP for Rust

    # Go
    go
    gopls   # LSP for Go
    delve   # Go debugger

    # Build Dependencies
    openssl
    openssl.dev
    zlib
    zlib.dev

    # Development Tools
    gdb     # GNU debugger
    lldb    # LLVM debugger
    meson
    mason   # LSP package manager
    just    # Command runner (modern make alternative)
    
  ];

}
