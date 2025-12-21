class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.50.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.0/arkavo-0.50.0-aarch64-apple-darwin.tar.gz"
      sha256 "ad1666986f530c7ff17698736ab3617110ec266795d8dec8523e09f462c0c96c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.0/arkavo-0.50.0-x86_64-linux.tar.gz"
      sha256 "09bcdb6b77a84af9426318a74c55d34aee5fa9f635ba0133d21ca6320dcc5872"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end