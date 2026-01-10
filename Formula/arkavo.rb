class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.53.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.53.1/arkavo-0.53.1-aarch64-apple-darwin.tar.gz"
      sha256 "64132ac66f67e50882b948a23d6d7c06f6a98c7b40d7e7afe3612f8f3a2a4dd8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.53.1/arkavo-0.53.1-x86_64-linux.tar.gz"
      sha256 "c07b5ecb45b2861d890f5e3312a0f906827210cf85b7b69108a170f4ea13bd8a"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end