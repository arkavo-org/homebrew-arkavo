class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.70.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.70.0/arkavo-0.70.0-aarch64-apple-darwin.tar.gz"
      sha256 "bc0ed28aa1c94ef65f01b7b09525e8f3d1315ab0113ed963ca6c1e277b853e47"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.70.0/arkavo-0.70.0-x86_64-linux.tar.gz"
      sha256 "4ddf5a51148f9fc4af052332045f647802f7bc449291b6f4c5ca802c27193766"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end