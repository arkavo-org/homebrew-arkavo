class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.74.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.74.0/arkavo-0.74.0-aarch64-apple-darwin.tar.gz"
      sha256 "bb091c92520e9d4cfc32630790bfa92b8367fce45f5d043ace1930d4232ebdca"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.74.0/arkavo-0.74.0-x86_64-linux.tar.gz"
      sha256 "2f25e6e7894dabca476714155cc6f32e34ce1c4a9006d65701d4ff3805b7d513"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end