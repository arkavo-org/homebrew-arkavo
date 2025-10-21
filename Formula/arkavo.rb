class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.2/arkavo-0.37.2-aarch64-apple-darwin.tar.gz"
      sha256 "f07749bdd75c99aa43fa5af23cfb21ecf8ab32967261328b50184760c05d7da8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.2/arkavo-0.37.2-x86_64-linux.tar.gz"
      sha256 "59be4228f9fc22de7c12fafc603e8b2f0fb6bfb8d9ed6fdb0115ccdee75ea1ea"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end