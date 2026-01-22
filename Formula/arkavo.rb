class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.55.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.55.1/arkavo-0.55.1-aarch64-apple-darwin.tar.gz"
      sha256 "4d42dbc01ebd0b84ca712f0c84a83c1fd753deb28df6d3ebbacf568271259334"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.55.1/arkavo-0.55.1-x86_64-linux.tar.gz"
      sha256 "16aa218db64ad24412302ab6f3a86e419593ef69784102f875fb525ccdcef84f"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end