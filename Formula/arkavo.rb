class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.51.6"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.6/arkavo-0.51.6-aarch64-apple-darwin.tar.gz"
      sha256 "856a8e1cdfa2008967f62c34c3191cc5de6c9d1e1aeb8d09daa2e619db4e0522"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.6/arkavo-0.51.6-x86_64-linux.tar.gz"
      sha256 "2e76b3a0d764a2a3bfc87c00468ad1629b9fd040364cd5466e13452f3c5e7a40"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end