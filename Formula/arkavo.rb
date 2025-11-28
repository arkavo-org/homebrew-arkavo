class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.42.4"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.42.4/arkavo-0.42.4-aarch64-apple-darwin.tar.gz"
      sha256 "efc866ddb56a7632e424eefb0cf5629f640bf3b51cff973e069507979d7f646e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.42.4/arkavo-0.42.4-x86_64-linux.tar.gz"
      sha256 "ea75caecf62fcec566e1348af7ca970bf2eacfded0d8388a7f66a4cfe6d63f60"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end