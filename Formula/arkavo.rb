class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.55.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.55.0/arkavo-0.55.0-aarch64-apple-darwin.tar.gz"
      sha256 "4b5dd0566bfebf96b788d37b733b801bbfbed8ba4c3a4b329c500c0d3a07d727"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.55.0/arkavo-0.55.0-x86_64-linux.tar.gz"
      sha256 "fda1cb322e8df1af9c4c06906da37a17c696df790bd0c1c05c4d1403ce4ba7a6"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end