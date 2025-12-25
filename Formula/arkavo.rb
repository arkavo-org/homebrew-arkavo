class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.50.5"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.5/arkavo-0.50.5-aarch64-apple-darwin.tar.gz"
      sha256 "4639726c1474fe4a632b7d2a9441e154a7dcfafd77ec2facf5fd8a11a713bf2c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.5/arkavo-0.50.5-x86_64-linux.tar.gz"
      sha256 "ce8fde405b19931cc38f22f6d9a58e24fa03fcc258706698a97fd36721fbb02e"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end