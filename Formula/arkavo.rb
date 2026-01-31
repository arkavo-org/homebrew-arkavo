class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.58.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.0/arkavo-0.58.0-aarch64-apple-darwin.tar.gz"
      sha256 "4630580217c1e9e9b409492c887d3116af76ab31756df18e2b51c078ee72a0d6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.0/arkavo-0.58.0-x86_64-linux.tar.gz"
      sha256 "133d04d2e6ade2d5f8f15a356885dd0b8f4eb1b127cf5d51125c30eee3ecbc1a"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end