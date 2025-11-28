class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.43.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.43.0/arkavo-0.43.0-aarch64-apple-darwin.tar.gz"
      sha256 "02594f9fe6ff7b4f2417e0bda58f08d83d8ec0db082ea0bcc0427cabdcd225b3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.43.0/arkavo-0.43.0-x86_64-linux.tar.gz"
      sha256 "01b856919c27230e962e0098014262267fb9d855cbc5c0fba2665777690c9e97"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end