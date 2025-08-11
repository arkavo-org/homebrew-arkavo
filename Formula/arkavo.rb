class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.25.14"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.25.14/arkavo-0.25.14-aarch64-apple-darwin.tar.gz"
      sha256 "2135cc7228159368602df63cbcaf6f9de40f958deaa218a0844042c110226f73"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.25.14/arkavo-0.25.14-x86_64-linux.tar.gz"
      sha256 "5c356bddbc7838dc0d2dbf306f1dc5c96a15cb76be1d4238c6528e0f33085362"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end