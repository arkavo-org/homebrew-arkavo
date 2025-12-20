class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.48.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.48.0/arkavo-0.48.0-aarch64-apple-darwin.tar.gz"
      sha256 "f14a101bd4d4f25ab6d8296aeafa9e9b8ee84ff41bfa5ed2053310832161cd6b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.48.0/arkavo-0.48.0-x86_64-linux.tar.gz"
      sha256 "e2bf251ad162dbcca5e14f1098b77767c711d5e78ee25d6e8e63e0d2cff8e6a2"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end