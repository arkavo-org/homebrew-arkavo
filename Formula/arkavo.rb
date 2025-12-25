class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.51.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.1/arkavo-0.51.1-aarch64-apple-darwin.tar.gz"
      sha256 "af0db09e7f7d05d9bfc056069763742c37460a6721be07584b665906a7cbfe3c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.1/arkavo-0.51.1-x86_64-linux.tar.gz"
      sha256 "507dedbea15107c28387853c688f1a6ac5587475750fbedcf791b644f8a76a79"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end