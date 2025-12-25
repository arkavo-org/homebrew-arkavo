class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.51.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.0/arkavo-0.51.0-aarch64-apple-darwin.tar.gz"
      sha256 "0c4a32e09a966d401e0cf62dad3a27cb58d0a478c03dcdba0e34187086788b71"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.0/arkavo-0.51.0-x86_64-linux.tar.gz"
      sha256 "7caf3d8de4025da00fcc0e1ee09203235a912dbf7a6714ed142758c076730956"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end