class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.32.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.32.0/arkavo-0.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "a4f813aa365cc96be0f585c2854a344674ec3bd402ae29d2d6b5c1fdd4d34ba0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.32.0/arkavo-0.32.0-x86_64-linux.tar.gz"
      sha256 "0758891daafa59d880237729bfbcc0e399760f0746b7f54f852f02fe24f00f82"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end