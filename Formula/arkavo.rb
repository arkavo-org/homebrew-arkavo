class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.75.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.75.0/arkavo-0.75.0-aarch64-apple-darwin.tar.gz"
      sha256 "3eb3d61f05811529152058e2d7abc6131d176559e2f158a4ca6606dd03cadd58"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.75.0/arkavo-0.75.0-x86_64-linux.tar.gz"
      sha256 "ef333e32b466cc7ad40168dfdfc019b7fa04798c1571c50d93ff01644eb59ca6"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end