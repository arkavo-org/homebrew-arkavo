class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.51.4"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.4/arkavo-0.51.4-aarch64-apple-darwin.tar.gz"
      sha256 "c846bc4dfff93a81bf274934d334c57ede5ca16c216801125636b8b3c1ac5b4a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.4/arkavo-0.51.4-x86_64-linux.tar.gz"
      sha256 "fcceafb4ebc6b5891a62ad3b77ccc5b6a1e53897471af37cc1499c1bc5dbf165"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end