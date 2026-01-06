class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.52.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.52.0/arkavo-0.52.0-aarch64-apple-darwin.tar.gz"
      sha256 "1a4b478ef74c74793cb4d4c45c3becd704fc856527f82bfb447f846d3ac1b3d2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.52.0/arkavo-0.52.0-x86_64-linux.tar.gz"
      sha256 "7ac0b7a0b9b5070b15469c9721828b976eebefc8d5d2406f0dd8ec482c5fe412"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end