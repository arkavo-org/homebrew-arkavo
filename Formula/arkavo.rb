class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.60.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.60.0/arkavo-0.60.0-aarch64-apple-darwin.tar.gz"
      sha256 "5d451b4f0037d90415bbf90bb5af603f47f426023849a2be3fa17b7efa27a74a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.60.0/arkavo-0.60.0-x86_64-linux.tar.gz"
      sha256 "9b008ba0f7fa737265b3cc10fbc09d22b8ca24cb0b00e3c58422f2968516891c"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end