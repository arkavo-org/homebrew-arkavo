class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.28.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.28.1/arkavo-0.28.1-aarch64-apple-darwin.tar.gz"
      sha256 "9d8d8f137c79b2ef3bfe47a29591c42cd331d232d2ba39dadd84cc4eda84382f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.28.1/arkavo-0.28.1-x86_64-linux.tar.gz"
      sha256 "5a701cedcc88288e9cd6ed816d43b5fb0ddb52dc583b8e8b6abff6a414277370"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end