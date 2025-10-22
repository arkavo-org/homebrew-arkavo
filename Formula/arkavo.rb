class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.5"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.5/arkavo-0.37.5-aarch64-apple-darwin.tar.gz"
      sha256 "d15161949a37c67e25e40d3f1816170e35d7012469bbe8162f7ea422a7fcfc8d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.5/arkavo-0.37.5-x86_64-linux.tar.gz"
      sha256 "977278e0255f59aa5304f2b144f60a35b569654a412342c3689c8d95b5ce3c34"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end