class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.35.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.35.0/arkavo-0.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "4c82dad1c6bc87b31f1cc774f54d9a99e88b50ff74fdb9634f279b919080be71"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.35.0/arkavo-0.35.0-x86_64-linux.tar.gz"
      sha256 "c4682b35f716ca013075c2280890a74594562fc9d12e37dff8d7b555ae5f260f"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end