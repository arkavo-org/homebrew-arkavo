class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.38.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.38.1/arkavo-0.38.1-aarch64-apple-darwin.tar.gz"
      sha256 "a9493755cf02d4c67a914dc9ae6e3706f5ed19e98b8f3912b1884514824037bf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.38.1/arkavo-0.38.1-x86_64-linux.tar.gz"
      sha256 "45238dfa88aa6c9d3ec430332193a3bf52b9743800e8fc020c3505a04c641a5f"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end