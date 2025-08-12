class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.26.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.26.0/arkavo-0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "1ce1352389d7629a6930280685ae98dab8b28aaf986b715a9b50347c4fb1ebe0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.26.0/arkavo-0.26.0-x86_64-linux.tar.gz"
      sha256 "0cbcc37cabfd634e800f4cc0daa5ef0223ab65a2dd6c373427dfc678edfac722"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end