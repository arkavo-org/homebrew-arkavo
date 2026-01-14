class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.53.4"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.53.4/arkavo-0.53.4-aarch64-apple-darwin.tar.gz"
      sha256 "4112f37dbb226791e905e5a9a4acbb238a7639192140477af9311dfe19b28727"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.53.4/arkavo-0.53.4-x86_64-linux.tar.gz"
      sha256 "954f51f8d3f8e6acf3f4f9792950c80c814907dc3982343f8c65a3bc1b1b0f9b"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end