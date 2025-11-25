class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.41.5"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.41.5/arkavo-0.41.5-aarch64-apple-darwin.tar.gz"
      sha256 "ef320bd0a2d2996331b2a301281069378d568993830c4395539ec7ddf569b608"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.41.5/arkavo-0.41.5-x86_64-linux.tar.gz"
      sha256 "860d873b347a8842b49fbb9248b6b8cdd8b587f36a8d00fe378b1bf746b5cc6f"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end