class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.73.11"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.73.11/arkavo-0.73.11-aarch64-apple-darwin.tar.gz"
      sha256 "a6c287ae502f4bc5b18d86ad49474d89fe22b6e33063528a4cb32cc0fd0732c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.73.11/arkavo-0.73.11-x86_64-linux.tar.gz"
      sha256 "e7b48c722097f4ae378e14234a21bcc0a2ef5688dfbab85c3e2d25df1aac8c96"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end