class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.7"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.7/arkavo-0.37.7-aarch64-apple-darwin.tar.gz"
      sha256 "2de045f64d06cfe214ebdb82c8e6e583282ff7115b0c7fb229ea8a75ae37ee47"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.7/arkavo-0.37.7-x86_64-linux.tar.gz"
      sha256 "1a79b9e9c1f28fcf0b0998ec68d0c21138991f96ef1c18786e687d70ac36ab88"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end