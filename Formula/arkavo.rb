class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.41.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.41.1/arkavo-0.41.1-aarch64-apple-darwin.tar.gz"
      sha256 "e1f35c435b96e04b05e3ecbe7115e6565e2af04a57a98dd274614381396ae937"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.41.1/arkavo-0.41.1-x86_64-linux.tar.gz"
      sha256 "2d88bc6c7af60b8533fdc89cb7c98da6aff86c029347f7b65b43afe79a6f2084"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end