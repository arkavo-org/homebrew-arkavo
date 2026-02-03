class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.58.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.2/arkavo-0.58.2-aarch64-apple-darwin.tar.gz"
      sha256 "607365af0509a265d17487f2f75c175fff6ab21c43c48f20bbb78cedca2c7a16"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.2/arkavo-0.58.2-x86_64-linux.tar.gz"
      sha256 "bde8f836826554cc4cda08eccbf39bd7a0071e9b6859542efc9a926ed74a9982"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end