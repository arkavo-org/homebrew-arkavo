class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.47.4"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.4/arkavo-0.47.4-aarch64-apple-darwin.tar.gz"
      sha256 "8f562d8fcf943a3352f1f595fa51b8b98fd64a5618f4c8a9f44cb40a65a5e4c4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.4/arkavo-0.47.4-x86_64-linux.tar.gz"
      sha256 "232747713f0fc9ecd866b1e13d2525593b1dc4b31b463d716ee181b07d6d0f9e"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end