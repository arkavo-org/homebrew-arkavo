class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.25.12"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.25.12/arkavo-0.25.12-aarch64-apple-darwin.tar.gz"
      sha256 "396b0c2e10cceb43b1efe783c2daea69d2eaa3be1469774be7b9f17738bc1fcc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.25.12/arkavo-0.25.12-x86_64-linux.tar.gz"
      sha256 "6b8d44040cf2a851fbd4422a13decfb8deccff90e651fb19614e28f62e47a056"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end