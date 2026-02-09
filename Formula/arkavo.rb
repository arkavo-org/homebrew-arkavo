class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.58.6"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.6/arkavo-0.58.6-aarch64-apple-darwin.tar.gz"
      sha256 "452986e8dbfc715a291da24a448c5502377d51d5cd9663c5aec08bcbc75ccc0d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.6/arkavo-0.58.6-x86_64-linux.tar.gz"
      sha256 "088ae50fd93991fdd7c259f2b99e6a2c7ef4de9940d2a40c8585ad64519862e2"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end