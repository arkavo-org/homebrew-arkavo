class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.54.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.54.0/arkavo-0.54.0-aarch64-apple-darwin.tar.gz"
      sha256 "d85c8d0d31a23fe8fb60a8989226a7ec6d835908be9a9246898977ecf3a12fcb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.54.0/arkavo-0.54.0-x86_64-linux.tar.gz"
      sha256 "a2ac2d026862750aef0466bb24c298b308b13edc96c9222fe01d1cb4e2e1ac23"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end