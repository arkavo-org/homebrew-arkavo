class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.27.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.27.0/arkavo-0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "b552e702c3c0f8957e99a55ff4597a40f9678ce4791edd1c1b833c9be81177cb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.27.0/arkavo-0.27.0-x86_64-linux.tar.gz"
      sha256 "68f5272b49752ec612375a1b01fe2473d6d613fc9309452ce136ecebba79b24e"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end