class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.70.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.70.1/arkavo-0.70.1-aarch64-apple-darwin.tar.gz"
      sha256 "a6b75c51ac65af11bfb88078cf993812294ce05ec7369cf9c0780ef7a38dacd0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.70.1/arkavo-0.70.1-x86_64-linux.tar.gz"
      sha256 "54a00955ee10ba4978472774acdb8c3bcdb667d5013309ac9c2e212958a8a962"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end