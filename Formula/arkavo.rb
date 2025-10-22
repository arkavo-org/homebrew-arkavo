class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.6"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.6/arkavo-0.37.6-aarch64-apple-darwin.tar.gz"
      sha256 "1b1bead99258105e4278c2898a0b8b08d2a71f8d066e70c028f9a03e9f7a0edd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.6/arkavo-0.37.6-x86_64-linux.tar.gz"
      sha256 "d406346d06d8275bb1abce0d903a1bcfe611b76f46da86b1171cc0cb24dd3d58"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end