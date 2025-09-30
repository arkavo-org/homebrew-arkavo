class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.31.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.31.0/arkavo-0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "f5ebb5d375a8e202775615d099e390ce070d90e869ec41f14e223a7216fc2f80"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.31.0/arkavo-0.31.0-x86_64-linux.tar.gz"
      sha256 "a7f4f65a509b86c357a999179c79d529cefdbecd00e3387ae570774ac1277fb0"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end