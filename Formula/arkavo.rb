class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.73.10"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.73.10/arkavo-0.73.10-aarch64-apple-darwin.tar.gz"
      sha256 "6be556690f99e0820e4fcf9dd16bdc6a739a6da1f50f3454180dd635da63727a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.73.10/arkavo-0.73.10-x86_64-linux.tar.gz"
      sha256 "1467da5fe4b604c40346fdec1fbfd042c3cd00046dd6d4153d1aa91b0b579e0c"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end