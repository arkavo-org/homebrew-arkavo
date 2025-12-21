class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.49.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.49.0/arkavo-0.49.0-aarch64-apple-darwin.tar.gz"
      sha256 "23278955237a3eb08fd833f666895553e61500d31fb85b50f7c2e9b4c4d2d612"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.49.0/arkavo-0.49.0-x86_64-linux.tar.gz"
      sha256 "481dc64774484abadddade956003d1a1c0098963c023a5cee9d8c2894143b48c"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end