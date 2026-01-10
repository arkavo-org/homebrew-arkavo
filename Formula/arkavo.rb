class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.53.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.53.2/arkavo-0.53.2-aarch64-apple-darwin.tar.gz"
      sha256 "225814e84dc318b3ea84f940471c05a6b695c54ffd27a51cba9debad09db9745"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.53.2/arkavo-0.53.2-x86_64-linux.tar.gz"
      sha256 "7297d0f9e0f3509dff518da164f9024ce2ac54da5a3f87330af6896dd9c9da87"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end