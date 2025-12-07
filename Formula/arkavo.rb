class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.47.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.1/arkavo-0.47.1-aarch64-apple-darwin.tar.gz"
      sha256 "5317db02aedcbbe83859f683c2d71d3e7d2f1d2697c77160d7a3597ca8fe8a3f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.1/arkavo-0.47.1-x86_64-linux.tar.gz"
      sha256 "bb1619e9e02b8cbb886d8dc7ed7c16cb718ad8abb9175af8bb8a6c52b34d4b51"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end