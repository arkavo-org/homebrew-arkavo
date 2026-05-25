class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.76.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.76.0/arkavo-0.76.0-aarch64-apple-darwin.tar.gz"
      sha256 "7d41c1f0e0b5f6832b35fdfd01459a0555ea25b1dff6992baa510e347001e1da"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.76.0/arkavo-0.76.0-x86_64-linux.tar.gz"
      sha256 "e63f862a5057a9dc6e743eb961187a33e8385455064e5066860d72885e9ddf69"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end