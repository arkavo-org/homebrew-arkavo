class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.45.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.45.0/arkavo-0.45.0-aarch64-apple-darwin.tar.gz"
      sha256 "bc563f0413f18ac91efa20affc8b1038d6b4f35063454651ea81e3b7184a9c05"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.45.0/arkavo-0.45.0-x86_64-linux.tar.gz"
      sha256 "598bc5d3bbc925a6f0d0d838605345621cb5cb39b8419e4e2744b9bd8f7d2cf5"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end