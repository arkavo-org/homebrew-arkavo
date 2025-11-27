class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.42.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.42.0/arkavo-0.42.0-aarch64-apple-darwin.tar.gz"
      sha256 "70d4392d6fb601de056ed08e481fe3ae60163631a14bd39b47205f5d5c6f41f7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.42.0/arkavo-0.42.0-x86_64-linux.tar.gz"
      sha256 "d238bbcc8151a05852384ad8e6c796a0a113f390b18844f0d8a30ea32d0304d9"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end