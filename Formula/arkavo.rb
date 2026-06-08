class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.77.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.77.0/arkavo-0.77.0-aarch64-apple-darwin.tar.gz"
      sha256 "cbda9067a5cd785c6e6e94bb6953d39cc0be00a891cf82c94ba0ab74426b7b58"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.77.0/arkavo-0.77.0-x86_64-linux.tar.gz"
      sha256 "68d589db40ff7f44e7f08f62871a9321ebaccc0396f10b02c40733c3b8d28f0f"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end