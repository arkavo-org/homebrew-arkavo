class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.46.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.46.0/arkavo-0.46.0-aarch64-apple-darwin.tar.gz"
      sha256 "2844d301d41a1874eb97c7eab9095a3c3b0d605777d46f4f8682fb6c30c73c56"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.46.0/arkavo-0.46.0-x86_64-linux.tar.gz"
      sha256 "dd400cd1577e27bf6ea527970462000fb0a208382fc13472add53cdf71ac53bd"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end