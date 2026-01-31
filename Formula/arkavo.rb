class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.57.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.57.1/arkavo-0.57.1-aarch64-apple-darwin.tar.gz"
      sha256 "a24faed9f1d92c5895f89c77f7aa40876b2567188bbf699be7d07d1d184fb329"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.57.1/arkavo-0.57.1-x86_64-linux.tar.gz"
      sha256 "169da88b32de7cd6a59335b83e04b8c675090674554677bd51d77a9340ca0126"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end