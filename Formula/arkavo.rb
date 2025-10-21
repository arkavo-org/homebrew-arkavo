class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.1/arkavo-0.37.1-aarch64-apple-darwin.tar.gz"
      sha256 "ec302f12aace02dc522797cfea505d12c292f1c179c93e47e2561aa2348798dc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.1/arkavo-0.37.1-x86_64-linux.tar.gz"
      sha256 "0d6fede3a05872b64b8e6b3dc6c502a94d3f8f01a837d615793f27068078e82d"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end