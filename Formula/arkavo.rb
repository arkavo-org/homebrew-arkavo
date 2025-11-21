class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.41.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.41.3/arkavo-0.41.3-aarch64-apple-darwin.tar.gz"
      sha256 "1c88776ce136b8b8643600760ca401a1b1585f372883ddcac915cb913b58e3bd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.41.3/arkavo-0.41.3-x86_64-linux.tar.gz"
      sha256 "5df2fa46ab7e9f52aa84d1d4cae29ab36fb0cd55d2ded7f94ffd2f6cb5c9048a"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end