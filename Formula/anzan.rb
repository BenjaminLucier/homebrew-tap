class Anzan < Formula
  desc "Terminal trainer for mental math"
  homepage "https://github.com/BenjaminLucier/anzan"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.2.0/anzan-aarch64-apple-darwin.tar.gz"
      sha256 "e8a13162620bbc8ab822ba7e0126a83b796f37a4f6d76467a0b74e064b16f490"
    end
    on_intel do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.2.0/anzan-x86_64-apple-darwin.tar.gz"
      sha256 "81799921fd8a48899162dd916fdc80fca5055e1f592ef8c6a0b070659eacf600"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.2.0/anzan-aarch64-unknown-linux-musl.tar.gz"
      sha256 "39432e9c61c155e5ee59e9a78bce54b4dd0d52133ea03439aeea4788620c7163"
    end
    on_intel do
      url "https://github.com/BenjaminLucier/anzan/releases/download/v0.2.0/anzan-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9a15f3171f642dc7e0f2297c08f14c677d2b786f9c2938ab64915db9f799a805"
    end
  end

  def install
    bin.install "anzan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anzan --version")
  end
end
