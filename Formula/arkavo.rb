class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.1/arkavo-0.37.1-aarch64-apple-darwin.tar.gz"
      sha256 "aaaf949f33f244689578eec24abfa56def9bff0ea750601b27df78ab5b9ec272"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.1/arkavo-0.37.1-x86_64-linux.tar.gz"
      sha256 "7da2bde1cce93a72648e0dfa1786751d530c79d4ff15009515191370c0d4b082"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end