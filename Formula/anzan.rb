class Anzan < Formula
  desc "Terminal trainer for mental math"
  homepage "https://github.com/BenjaminLucier/anzan"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.0/anzan-aarch64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.0/anzan-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.0/anzan-aarch64-unknown-linux-musl.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.0/anzan-x86_64-unknown-linux-musl.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "anzan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anzan --version")
  end
end
