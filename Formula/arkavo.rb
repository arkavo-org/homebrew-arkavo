class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.43.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.43.1/arkavo-0.43.1-aarch64-apple-darwin.tar.gz"
      sha256 "2c02f49b26d342c6ca9ba2be195447e4825d76339367438d28bea26d2d42ab0b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.43.1/arkavo-0.43.1-x86_64-linux.tar.gz"
      sha256 "ec9cd7786b4271a05386ff1ad4bc0f01ebec3511a9ebe06eb5945ad1fdad8ad1"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end