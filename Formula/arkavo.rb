class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.28.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.28.0/arkavo-0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "2d36a63b3cfdec3940bb002d47d574b29fb25104aee10b5cbd52697a70c201f5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.28.0/arkavo-0.28.0-x86_64-linux.tar.gz"
      sha256 "5a4623daaaf6537c5e2eddf813e9ac96c0dccbdc41f71c830af6ccfdcc8685ea"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end