class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.42.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.42.1/arkavo-0.42.1-aarch64-apple-darwin.tar.gz"
      sha256 "7361cae76132906967b865ee8e62c21ddb5080c48cc604f9805afc68d4e443e8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.42.1/arkavo-0.42.1-x86_64-linux.tar.gz"
      sha256 "cc77ce4256c0abc8fbdb8bb5ec0902acdefe6dab3d10e5c9c5f4bdfa2c613e23"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end