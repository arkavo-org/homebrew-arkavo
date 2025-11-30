class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.44.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.44.0/arkavo-0.44.0-aarch64-apple-darwin.tar.gz"
      sha256 "28afc33b0303454a20d8aea1bead6e6b05c5cbddf34a39de22ae28c9dbee5b99"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.44.0/arkavo-0.44.0-x86_64-linux.tar.gz"
      sha256 "0ae90bce76a68f01ad7c6c73dc4df6377d3b1204001dd458389697fef88931d7"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end