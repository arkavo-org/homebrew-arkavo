class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.57.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.57.2/arkavo-0.57.2-aarch64-apple-darwin.tar.gz"
      sha256 "bb0e1f54f8d8fceb992094acf7d74fbb65a78629d355f62f3d36c4e74fdd922c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.57.2/arkavo-0.57.2-x86_64-linux.tar.gz"
      sha256 "fd879fcffceb5fbaa34e3d2c889410c9671e010df0caaffd3a174e1e0b83305c"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end