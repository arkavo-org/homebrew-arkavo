class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.58.9"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.9/arkavo-0.58.9-aarch64-apple-darwin.tar.gz"
      sha256 "a951a3ba59851bf60be417ab36113a9d273173ad6e141e3d08129ae530396eb2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.9/arkavo-0.58.9-x86_64-linux.tar.gz"
      sha256 "5a219970d55c9c9c3f4b13b390f124cbc5d9e8d2e56019d1aabc44c7e2dbe3f1"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end