class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.58.4"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.4/arkavo-0.58.4-aarch64-apple-darwin.tar.gz"
      sha256 "fdb075e9e76f5695527cff59e9b1db3cd9d4238afb6887ef4614fb1c2ce2eeec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.4/arkavo-0.58.4-x86_64-linux.tar.gz"
      sha256 "6a494bf8db3b3770e7dfdb41fc73ce96d6de18f9d45ae6c0bd9d5553346beab5"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end