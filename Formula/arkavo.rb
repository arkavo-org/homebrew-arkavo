class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.34.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.34.0/arkavo-0.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "a0f50b11695570aef4bedc89ed6d2adeba9e76d2aec5f94854e7371b61a28691"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.34.0/arkavo-0.34.0-x86_64-linux.tar.gz"
      sha256 "1f05b3a452a0978eb53e62724c6643003a69c5da3f4412c69337d23263ef8c37"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end