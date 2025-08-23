class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.29.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.29.2/arkavo-0.29.2-aarch64-apple-darwin.tar.gz"
      sha256 "c1d0018e48d348c577d41f4ef1d21327f307323907c6838ff8877e4e56ad8c1d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.29.2/arkavo-0.29.2-x86_64-linux.tar.gz"
      sha256 "fb9091555b1dba5e3eaefa701ca71ea5070742548ddddc06c21c35e71dcdecad"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end