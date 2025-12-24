class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.50.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.3/arkavo-0.50.3-aarch64-apple-darwin.tar.gz"
      sha256 "7063b589fbd01829c12e80b1b00c717ade0cc5d4c301e0cfc769e8c669beebec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.3/arkavo-0.50.3-x86_64-linux.tar.gz"
      sha256 "1dcd18e8aee654006e5ee5225362004a455d38f4aed3964671f2b67c1094852e"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end