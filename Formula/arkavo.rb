class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.28.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.28.2/arkavo-0.28.2-aarch64-apple-darwin.tar.gz"
      sha256 "463f064d2e632e9e7dd5a71b2701c1a8ffc0327da82519881644586e681056b4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.28.2/arkavo-0.28.2-x86_64-linux.tar.gz"
      sha256 "105922778dae93e3e7d92f3ccb612517a3aa6dd4d09ff313ac05d684b0fac6a1"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end