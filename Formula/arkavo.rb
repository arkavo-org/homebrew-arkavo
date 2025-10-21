class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.37.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.1/arkavo-0.37.1-aarch64-apple-darwin.tar.gz"
      sha256 "62b2e2e587faf7d08369face5cc62d89c09427636942ec536eafcadd830d99b9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.37.1/arkavo-0.37.1-x86_64-linux.tar.gz"
      sha256 "6c56f19173982fe29d5d7484ef3348775f82b8ef17e5e9384959daf387aea33e"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end