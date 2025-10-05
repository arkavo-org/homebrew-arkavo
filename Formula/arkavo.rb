class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.33.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.33.1/arkavo-0.33.1-aarch64-apple-darwin.tar.gz"
      sha256 "363154c95f8ed42332e40a4d6085f946dca839d3bb58275dfaf7a83280eb08f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.33.1/arkavo-0.33.1-x86_64-linux.tar.gz"
      sha256 "d79f4c3a6f508ff067f520aa013a89f2cd52d35aa10f08c2cb0044bd7ca53509"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end