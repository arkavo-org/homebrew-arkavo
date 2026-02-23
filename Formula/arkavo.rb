class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.62.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.62.0/arkavo-0.62.0-aarch64-apple-darwin.tar.gz"
      sha256 "39e04e2a7025217d3c9579eafd81cf15aa8b5fd9e58c7a89c088be73cb422a87"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.62.0/arkavo-0.62.0-x86_64-linux.tar.gz"
      sha256 "f19408d38b6b2ed8e4c6c308e19fea441dadbad29251d2180a19be508de7ee21"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end