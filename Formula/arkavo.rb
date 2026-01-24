class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.56.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.56.0/arkavo-0.56.0-aarch64-apple-darwin.tar.gz"
      sha256 "8f12fb46772cceef82a7e2bc23e0b1c6de0d11500242019d7b46867300e0c337"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.56.0/arkavo-0.56.0-x86_64-linux.tar.gz"
      sha256 "859180d4c90a42df9fd8ba3658e899115b571a2442f9509e328206c76eafa20e"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end