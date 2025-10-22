class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.4"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.4/arkavo-0.37.4-aarch64-apple-darwin.tar.gz"
      sha256 "7dc003a63360441b1fcacef6c5683cc6b6757d74341b929b91fc5b213699e00d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.4/arkavo-0.37.4-x86_64-linux.tar.gz"
      sha256 "909f8667db123d0e2c47302b97c0bc4611596cfa7c6eab6d207d68448429cc10"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end