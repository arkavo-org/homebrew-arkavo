class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.51.5"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.5/arkavo-0.51.5-aarch64-apple-darwin.tar.gz"
      sha256 "5130845518e92147d876723b0352a051a40d3ebfe6d9fa31fbcdcd79bbbcca42"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.51.5/arkavo-0.51.5-x86_64-linux.tar.gz"
      sha256 "7291f0688f4458535c6e7fe1701e3918892ab738780111a1eea1b6d92a86f8a8"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end