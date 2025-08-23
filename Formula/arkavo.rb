class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.29.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.29.1/arkavo-0.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "24ea042df8fb6f178ec736b6df350940bd01467f0d4a3cac32a23e1ea7495a82"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.29.1/arkavo-0.29.1-x86_64-linux.tar.gz"
      sha256 "4992a593ff885bd32748efcf0f54e99258808d05547294e9e86185580c296aaf"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end