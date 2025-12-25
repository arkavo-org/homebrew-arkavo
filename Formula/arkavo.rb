class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.51.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.2/arkavo-0.51.2-aarch64-apple-darwin.tar.gz"
      sha256 "66466c00a47d7c5cdc0e6740024b0149ca2e396b00816d0ee97a05b1b22bea71"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.2/arkavo-0.51.2-x86_64-linux.tar.gz"
      sha256 "06c35187dfd121cdfb1c11aaafa2486e2b91f0688f2ba8f73d7ad207ac6be572"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end