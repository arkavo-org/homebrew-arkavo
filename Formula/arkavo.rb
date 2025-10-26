class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.38.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.38.0/arkavo-0.38.0-aarch64-apple-darwin.tar.gz"
      sha256 "f27e2ddc8e6a65e5457d3940ac1973e7bff70bd46d913d1895ffb014b09a4c2e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.38.0/arkavo-0.38.0-x86_64-linux.tar.gz"
      sha256 "223db14a16214e62eacb6303c42e7c7dacc38264507c7dc36954175d9adb3ff3"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end