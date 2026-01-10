class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.53.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.53.0/arkavo-0.53.0-aarch64-apple-darwin.tar.gz"
      sha256 "bfe1f25537a3f9477ab621adb6f6b8b4e2deefd0b37671e32bbee1b08df05a8a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.53.0/arkavo-0.53.0-x86_64-linux.tar.gz"
      sha256 "ce9e5416bdabbf8da29ad9aa8465dc2ca9f6863a20990c2a7d1f123adeeebe80"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end