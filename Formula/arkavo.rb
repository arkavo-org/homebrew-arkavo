class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.53.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.53.3/arkavo-0.53.3-aarch64-apple-darwin.tar.gz"
      sha256 "ea17589174e74788a255bbb42372fbf822212a7527de0fbfee762e1d5ee6eee1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.53.3/arkavo-0.53.3-x86_64-linux.tar.gz"
      sha256 "5fff2a288414a2016074e44fc88ff6ed6145b6f12a1341d82ea82340d606e2c5"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end