class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.61.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.61.0/arkavo-0.61.0-aarch64-apple-darwin.tar.gz"
      sha256 "e553971073c28d49160ced1dce7153b2ff8262677e767a4a40a1ea576d15c6d8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.61.0/arkavo-0.61.0-x86_64-linux.tar.gz"
      sha256 "4711b19aac6b826e6605f327f8837869161cc812c38d9227b222e6733a28a4cb"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end