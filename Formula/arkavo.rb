class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.55.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.55.2/arkavo-0.55.2-aarch64-apple-darwin.tar.gz"
      sha256 "bbec8b4e151e6ff660bdc6b374ec088dd8681ca5e9f05e2c78d2bfb71137fdd6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.55.2/arkavo-0.55.2-x86_64-linux.tar.gz"
      sha256 "d12d342642de3145d2a5df23e7af3d6cdc7caabdefa5239d47856190d46bd90f"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end