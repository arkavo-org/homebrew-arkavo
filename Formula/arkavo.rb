class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.58.7"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.7/arkavo-0.58.7-aarch64-apple-darwin.tar.gz"
      sha256 "cfee1e221a28f8e60f0e2d8703a0077fd1cef3e9ec48eb38b77874e30290b81e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.7/arkavo-0.58.7-x86_64-linux.tar.gz"
      sha256 "65190fd59415bc3a435921db51c8bb5605f299c6a0e25e568efa4f37df718dd1"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end