class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.28.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.28.3/arkavo-0.28.3-aarch64-apple-darwin.tar.gz"
      sha256 "ee28b147553106d1e71c7ab57e9a7aeebaff50988515b7df42581680043010fe"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.28.3/arkavo-0.28.3-x86_64-linux.tar.gz"
      sha256 "1b1d3593c8dfed1ea249d3e681010270f92534dd881b8e36a3ebba760f071520"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end