class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.50.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.2/arkavo-0.50.2-aarch64-apple-darwin.tar.gz"
      sha256 "98f2915d2adeed0f2ca3f534cc92c3642dd80d48e772275cd4435dd2b2b5a6b3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.2/arkavo-0.50.2-x86_64-linux.tar.gz"
      sha256 "c03e056c8d46676a5a602ea4ef451945563a86e1dd988a5919ad1e05ddb8b50a"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end