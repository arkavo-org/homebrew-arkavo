class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.73.12"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.73.12/arkavo-0.73.12-aarch64-apple-darwin.tar.gz"
      sha256 "cb77e30ab5620c4e90d6eebe8fe12ccd693613298330fdd3d4ffc3918c06360d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.73.12/arkavo-0.73.12-x86_64-linux.tar.gz"
      sha256 "4dc23df595d7cb15847d0e405560d29f053834e90ddddf0f23c37cc3a0ccb254"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end