class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.58.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.1/arkavo-0.58.1-aarch64-apple-darwin.tar.gz"
      sha256 "5ca35c6508bf5dec5ff1ed9a2ce006a6b39bd17c8dd2f3b4d4e8386e110cae6e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.1/arkavo-0.58.1-x86_64-linux.tar.gz"
      sha256 "4ff51e3755badc0809c3b1d4b23456613510bc4735c5d754f37dc48ab3a7e3a1"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end