class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.36.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.36.0/arkavo-0.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "f58f12b12c8e4faf02b2f8f283a157ecffd14ac90c44cf6432c2421bbd5322e2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.36.0/arkavo-0.36.0-x86_64-linux.tar.gz"
      sha256 "53495ec29c4d27f7f853892b0dc0e62ba1eb218cba677149cca79ae99ecb366d"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end