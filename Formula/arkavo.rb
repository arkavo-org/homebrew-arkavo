class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.58.8"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.8/arkavo-0.58.8-aarch64-apple-darwin.tar.gz"
      sha256 "c60f2ac01e9e82bfa840883d808b51184423cbea9df1fdfd392c5146ecff6361"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.8/arkavo-0.58.8-x86_64-linux.tar.gz"
      sha256 "fd38743c0ca4966723a33fe57f9fe878f061b746d6c5db0ba3ee6b6fe84dd388"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end