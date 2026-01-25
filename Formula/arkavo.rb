class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.57.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.57.0/arkavo-0.57.0-aarch64-apple-darwin.tar.gz"
      sha256 "87f7fd5846b9b863f86b1dac5d72f0e080c565c075501d8a99870a5954b71255"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.57.0/arkavo-0.57.0-x86_64-linux.tar.gz"
      sha256 "1230378f7aec42232a51abd74bb300e77c25a809455261a3838870b2d51cca84"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end