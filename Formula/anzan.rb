class Anzan < Formula
  desc "Terminal trainer for mental math"
  homepage "https://github.com/BenjaminLucier/anzan"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.0/anzan-aarch64-apple-darwin.tar.gz"
      sha256 "4ce1c8e7695ea4d72e0c72019d7c850f87b03c396f7a2b57dc0ef6e6ad5899e1"
    end
    on_intel do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.0/anzan-x86_64-apple-darwin.tar.gz"
      sha256 "3497813af9d005d20aed6df5bf8df6f4bead48dc4838a3dc3f8782778ee7feda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.0/anzan-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fe626b02d732fa49cdc84b45d128d690c4e8633d1bf9c958521c09f224ea0bad"
    end
    on_intel do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.1.0/anzan-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5c2efda67a42ecf09fa36fe14d44cde02c7f500e48b625e467ede0e2cdfc037d"
    end
  end

  def install
    bin.install "anzan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anzan --version")
  end
end
