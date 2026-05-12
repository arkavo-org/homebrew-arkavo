class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.74.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.74.2/arkavo-0.74.2-aarch64-apple-darwin.tar.gz"
      sha256 "b76b73fa433fcaa1d3b91613901a417ebec3d7ca09c97b82c8e7213a812cccd5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.74.2/arkavo-0.74.2-x86_64-linux.tar.gz"
      sha256 "6af227db0c0f0c74a78cfc8323d830b4d1a18023642c1c43ccfe2dffb7990fd6"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end