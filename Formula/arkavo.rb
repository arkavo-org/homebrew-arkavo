class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.30.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.30.0/arkavo-0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "2861bb09967a2eaa3fdbd9661435f2b3e06186e57a68a81ab95a0e8321682c9b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.30.0/arkavo-0.30.0-x86_64-linux.tar.gz"
      sha256 "46ea856839ef89f8b3bf54955b0c17a1e7447ef8a3a4180d083aceda013c8a50"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end