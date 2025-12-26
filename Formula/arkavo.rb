class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.51.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.3/arkavo-0.51.3-aarch64-apple-darwin.tar.gz"
      sha256 "bd729dfc4b6b1ad993b528791d76b6b4f024a35c8bdf6c66a701b6f8e02a7ed2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.3/arkavo-0.51.3-x86_64-linux.tar.gz"
      sha256 "dd2dc0f0b2bde0efb16da83984ebc3d41d881534b385a9dc8aefdae336fe34c5"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end