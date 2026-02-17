class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.58.10"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.10/arkavo-0.58.10-aarch64-apple-darwin.tar.gz"
      sha256 "affb38586cee0f149b51b8b5f426c050f91808ecedba75c5e965dd7f38d6b69d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.10/arkavo-0.58.10-x86_64-linux.tar.gz"
      sha256 "76a459098b510157a421bc26d057b6c755f56b382587b83c343068379a59b67c"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end