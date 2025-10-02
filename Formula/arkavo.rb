class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.31.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.31.1/arkavo-0.31.1-aarch64-apple-darwin.tar.gz"
      sha256 "f1b3109b478751101204e0c42c9ca01a18be50007003326179bedd0b8e750100"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.31.1/arkavo-0.31.1-x86_64-linux.tar.gz"
      sha256 "134226c140ae5bd0c146d3f56f5e318823ac44b64a394540a2621e714152cf81"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end