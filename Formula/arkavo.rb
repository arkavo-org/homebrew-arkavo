class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.73.9"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.73.9/arkavo-0.73.9-aarch64-apple-darwin.tar.gz"
      sha256 "3355496b9e6b2a5a0f28e66a9f83ef79c3f7b31cebb1368e624a5ff3c85dfcc1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.73.9/arkavo-0.73.9-x86_64-linux.tar.gz"
      sha256 "d1fe185d67c3e599c1bdee681ee374e1739397811037f0e2e45c968fc306aa51"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end