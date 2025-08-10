class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.25.8"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.25.8/arkavo-0.25.8-aarch64-apple-darwin.tar.gz"
      sha256 "89c34f35621fbb984133803f01667e304056277bbb28b15c0f40db0e02314f67"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.25.8/arkavo-0.25.8-x86_64-linux.tar.gz"
      sha256 "a97b46f1a1b8fb5b4ef075caff38edf8dd19c6e04db8dbb161005bd158752e37"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end