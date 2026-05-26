class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.76.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.76.1/arkavo-0.76.1-aarch64-apple-darwin.tar.gz"
      sha256 "56fa5a0a47d59399b4e76c1ad574365fe1b0119ad5cf8c2c32325a00a466a923"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.76.1/arkavo-0.76.1-x86_64-linux.tar.gz"
      sha256 "1d8a3333bb9f47ede7e6db9a174d316870493d27f70f49e6a747813677be03bf"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end