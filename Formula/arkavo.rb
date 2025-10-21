class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.0/arkavo-0.37.0-aarch64-apple-darwin.tar.gz"
      sha256 "85795996bca43e4905ce1a51eea551a725188419b8a0adea6c88164370a55a0e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.0/arkavo-0.37.0-x86_64-linux.tar.gz"
      sha256 "4ae6fb87a747a9f406dd381aefc8092c18e3ed05efdf931b2fb175da82f3c707"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end