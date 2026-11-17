class Gauntlet < Formula
  desc "128 Rust practice problems, from knowing Rust to being fluent in it"
  homepage "https://github.com/BenjaminLucier/gauntlet"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/BenjaminLucier/gauntlet/releases/download/v0.1.2/gauntlet-aarch64-apple-darwin.tar.gz"
      sha256 "851676f8aa8420700d7382d9ce3f99b46f9f3ec01d5d5b52ea21261bd8c6ff45"
    end
    on_intel do
      url "https://github.com/BenjaminLucier/gauntlet/releases/download/v0.1.2/gauntlet-x86_64-apple-darwin.tar.gz"
      sha256 "c1894479814edb77932e7a577eb28a8e8fe333472f5c92cea8b4fdb375415523"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BenjaminLucier/gauntlet/releases/download/v0.1.2/gauntlet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bdb26829ac5261068443ecc051c3bdd64a86a058b0d3634c4ac406784f2e20f1"
    end
    on_intel do
      url "https://github.com/BenjaminLucier/gauntlet/releases/download/v0.1.2/gauntlet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "408305017453094850bcacc7ab9c81869be1950e9b3214dfbe619855dce178e0"
    end
  end

  def install
    bin.install "gauntlet"
  end

  def caveats
    <<~EOS
      gauntlet compiles your solutions with the Rust toolchain on your PATH,
      so it needs Rust 1.91 or later with clippy (https://rustup.rs):
        rustup component add clippy
      gauntlet says so when it starts if rustc is missing or too old.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gauntlet --version")
  end
end
