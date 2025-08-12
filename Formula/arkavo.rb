class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.26.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.26.1/arkavo-0.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "d8daa501ee9e40fffbbfbb40f9985bcd64a8617fb83823ee88617db22a184174"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.26.1/arkavo-0.26.1-x86_64-linux.tar.gz"
      sha256 "25a2cd3e738f26cd435b5d9f4d9b22d5e4b489d2b319ac6b2273dba6cf5da568"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end