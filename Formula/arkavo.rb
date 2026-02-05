class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.58.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.3/arkavo-0.58.3-aarch64-apple-darwin.tar.gz"
      sha256 "28c348b02f0c05e01e363897ed4b76790ceecf626f947af4f015422ff5813d35"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.58.3/arkavo-0.58.3-x86_64-linux.tar.gz"
      sha256 "40d4dc3dc2f5956ca463695e333bb514302595eda6ea41e06ac44d3aca376ba6"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end