class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.27.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.27.1/arkavo-0.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "7e012ef6a760367e93851eff695fd7d51f8d1d412e8744871fdcf5109da3b3ab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.27.1/arkavo-0.27.1-x86_64-linux.tar.gz"
      sha256 "3cdbfdf9cbb1d364cb47b76cfe91b852d1f98b9a3a9821400599c4950b4ce2d3"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end