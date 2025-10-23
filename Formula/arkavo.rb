class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.8"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.8/arkavo-0.37.8-aarch64-apple-darwin.tar.gz"
      sha256 "46f7c89fc3afbed815c54c2e0a6fd4adb7b282d59c42974d6b971c4c6ac83992"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.8/arkavo-0.37.8-x86_64-linux.tar.gz"
      sha256 "af91c06b22bf7ef1878dfede885c06956667f0a642aeb92f1b2b6df4cb945856"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end