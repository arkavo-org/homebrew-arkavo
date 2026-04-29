class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.72.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.72.0/arkavo-0.72.0-aarch64-apple-darwin.tar.gz"
      sha256 "f91c96ca21368a49ad9b87e0b73be098311a5413c03c1d7b90dd3e2d4da65532"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.72.0/arkavo-0.72.0-x86_64-linux.tar.gz"
      sha256 "0ec084f8eec302d3b97f846546d046d0642881ff02df58e82b9a00be43475e84"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end