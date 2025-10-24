class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.10"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.10/arkavo-0.37.10-aarch64-apple-darwin.tar.gz"
      sha256 "3795533dc70343fd7194c9f1ce486d2f2c5ffdcab08b6df85e485107a271ba1c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.10/arkavo-0.37.10-x86_64-linux.tar.gz"
      sha256 "94033cd53b3c30f699d54cca31ed182f197f726c7bb2d5eee2387cda4cf97e82"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end