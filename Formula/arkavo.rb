class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.58.5"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.5/arkavo-0.58.5-aarch64-apple-darwin.tar.gz"
      sha256 "eea7364a67fc94a5743dbaa0d1c01c01079b0a07f55e7a86d1874c3de0d60d4c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.5/arkavo-0.58.5-x86_64-linux.tar.gz"
      sha256 "991fd760ecf5b2bda7a1ab5f40cdd6e268c8ff710905b1106d40eaca401bae5d"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end