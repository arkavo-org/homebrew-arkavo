class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.29.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.29.0/arkavo-0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "6b8df8293fe51bf469c87b4f8e42bfd9cb4ad081eda5e3f74ed3b0b3926aaeea"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.29.0/arkavo-0.29.0-x86_64-linux.tar.gz"
      sha256 "1dc23d3c8b464019e3ae551215e3f0d6c54c34501da031d221ef5e37162308f0"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end