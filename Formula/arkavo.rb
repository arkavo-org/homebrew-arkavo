class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.42.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.42.2/arkavo-0.42.2-aarch64-apple-darwin.tar.gz"
      sha256 "0b7cbe1a3ab7ddc23e1cdb2a750cf73de9ca1c5d5be34ad55fc19608efc697fc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.42.2/arkavo-0.42.2-x86_64-linux.tar.gz"
      sha256 "7e430ffb197d45eb8300b4b746803e814903e0627768f68608c35a6ed1532d75"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end