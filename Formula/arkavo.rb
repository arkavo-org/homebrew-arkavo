class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.9"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.9/arkavo-0.37.9-aarch64-apple-darwin.tar.gz"
      sha256 "823208f3aea3445a69eeed43b3ba911258011f6cbe787217a6a62e97b10ea369"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.9/arkavo-0.37.9-x86_64-linux.tar.gz"
      sha256 "479543ca2e04dc8ac38a26d57603414c85a19c18866b39b7d67fa267a6b3d2f9"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end