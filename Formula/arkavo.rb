class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.50.4"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.4/arkavo-0.50.4-aarch64-apple-darwin.tar.gz"
      sha256 "9426e920285889e5059ebe7654a4ffd89aead3f4b4262513ae6e7fbfe070cd66"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.4/arkavo-0.50.4-x86_64-linux.tar.gz"
      sha256 "263401e2bf195675a0e99d461b24353c128c772a860f88b4eb77b3727addd13b"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end