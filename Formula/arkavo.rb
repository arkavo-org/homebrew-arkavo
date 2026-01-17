class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.54.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.54.1/arkavo-0.54.1-aarch64-apple-darwin.tar.gz"
      sha256 "790771ddbbff06fd614d356ec0be0f9283f58d3321db16473549f9fc6260a2f6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.54.1/arkavo-0.54.1-x86_64-linux.tar.gz"
      sha256 "90b1004c3ca6906c5c2b59dc217c37a382723043c0ed71743d85737e69a0cc17"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end