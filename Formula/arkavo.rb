class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.47.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.2/arkavo-0.47.2-aarch64-apple-darwin.tar.gz"
      sha256 "c2daa5f936bcbb4612a2207cc87b7104825f5fa31ef18f05b9d853ca104ea508"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.2/arkavo-0.47.2-x86_64-linux.tar.gz"
      sha256 "8ed2fca4f8b49b439184afff797c2929aa3697a2b1ebea7d12c5489b7f3764fa"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end