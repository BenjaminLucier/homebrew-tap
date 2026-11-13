class Anzan < Formula
  desc "Terminal trainer for mental math"
  homepage "https://github.com/BenjaminLucier/anzan"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.1/anzan-aarch64-apple-darwin.tar.gz"
      sha256 "a75cdb4cec7399c96787d54e58370fc0da0826f48ae969c165746b5553eec6af"
    end
    on_intel do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.1/anzan-x86_64-apple-darwin.tar.gz"
      sha256 "1424398cbafda1e13530918ad9d0939a1b2708eaefab4cc17586afbe56aeda0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.1/anzan-aarch64-unknown-linux-musl.tar.gz"
      sha256 "014a1a3ad931d1c90236d7f31330c5b63272f1672cc6f5669fa3eb36478330ac"
    end
    on_intel do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.1/anzan-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6eeb4b89fe9266400b59e9e332eae38c40246cc5b4575a81e3b0d04e329c8f20"
    end
  end

  def install
    bin.install "anzan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anzan --version")
  end
end
