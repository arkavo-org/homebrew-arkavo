class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.33.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.33.2/arkavo-0.33.2-aarch64-apple-darwin.tar.gz"
      sha256 "d1b79b7ada66c18b67cbd9e5230221aa0171cb0476622648299df2e0add8d7f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.33.2/arkavo-0.33.2-x86_64-linux.tar.gz"
      sha256 "4f9b8d39faf84ae2b47eb144e974bdf25765359d7b6abb6c4879685798593c23"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end