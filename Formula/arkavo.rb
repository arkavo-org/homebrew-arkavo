class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.47.5"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.5/arkavo-0.47.5-aarch64-apple-darwin.tar.gz"
      sha256 "c4c2adf3627685258160c7ec1b76d7bb0819dea9d8589aed218a5018d5c0f1c6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.5/arkavo-0.47.5-x86_64-linux.tar.gz"
      sha256 "c1068535515e3e8942e641305813b75fbe6821a420b8893832354fcad675d872"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end