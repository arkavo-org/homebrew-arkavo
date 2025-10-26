class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.38.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.38.2/arkavo-0.38.2-aarch64-apple-darwin.tar.gz"
      sha256 "a111b04ae6e7f5178f23b21eda83d8519d9407d3cb000fe7d289603c3d6bdc08"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.38.2/arkavo-0.38.2-x86_64-linux.tar.gz"
      sha256 "531e525a07f6d41ed4d99f256e6e228ad6602ad0c9839ec7f86183bcf2d2f641"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end