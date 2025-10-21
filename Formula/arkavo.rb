class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.3/arkavo-0.37.3-aarch64-apple-darwin.tar.gz"
      sha256 "5c74be5363d5af00dfecd253fe673fe18af949c287eb2d61bdf5499810e2edce"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.3/arkavo-0.37.3-x86_64-linux.tar.gz"
      sha256 "92efec8dfe04667a0260e00a64be110dd50b85c63927e5e311080d41e42a91b6"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end