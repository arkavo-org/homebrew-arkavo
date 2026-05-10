class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.74.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.74.1/arkavo-0.74.1-aarch64-apple-darwin.tar.gz"
      sha256 "e1a76f0b937556b9c1c2d1f827769d2525e78982d7ac36820a0ac6311b7f15be"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.74.1/arkavo-0.74.1-x86_64-linux.tar.gz"
      sha256 "46c928de284dd925be67cf2aa7cff583057349934bf91161590debe37e39c24f"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end