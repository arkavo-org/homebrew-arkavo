class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.70.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.70.2/arkavo-0.70.2-aarch64-apple-darwin.tar.gz"
      sha256 "aaef79e7627034d6dd8d54ff4ee7cd87b796d5b1219fd58fec6e84e53e720850"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.70.2/arkavo-0.70.2-x86_64-linux.tar.gz"
      sha256 "b9172962b0db088c58a4d292ebea117697b2403c386d28cc504f475f461679a9"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end