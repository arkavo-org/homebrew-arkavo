class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.47.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.0/arkavo-0.47.0-aarch64-apple-darwin.tar.gz"
      sha256 "663148f300019f331c32c47ac133f1e4251dac511d507466a9fb73330434622f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.0/arkavo-0.47.0-x86_64-linux.tar.gz"
      sha256 "27ce92778a701cfab133a8c7c2160ed6f1ae24922bb45d2c74618002c6fd6782"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end