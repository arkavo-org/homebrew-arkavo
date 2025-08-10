class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.25.11"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.25.11/arkavo-0.25.11-aarch64-apple-darwin.tar.gz"
      sha256 "7f62f21d7ff2116c8b1477f791cbcf081c6bc41ab2f3ce18056a6a0d53aeaaab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.25.11/arkavo-0.25.11-x86_64-linux.tar.gz"
      sha256 "887878a4c511ee3541d9d79cb4284a1a7af1cbe8e742bc83b0e80697aeb8dbc4"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end