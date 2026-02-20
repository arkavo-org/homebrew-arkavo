class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.59.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.59.0/arkavo-0.59.0-aarch64-apple-darwin.tar.gz"
      sha256 "7827d4ca78c69b24caf6ad6ff299ef7fe0da991b7f463f859637ac0309e1ab8f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.59.0/arkavo-0.59.0-x86_64-linux.tar.gz"
      sha256 "c63f71fd1d17e1f386f5d68c065de9011ea56f95344b9a0e12b06d0817e14d21"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end