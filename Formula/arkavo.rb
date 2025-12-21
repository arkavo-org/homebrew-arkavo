class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.50.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.1/arkavo-0.50.1-aarch64-apple-darwin.tar.gz"
      sha256 "149c9a236f64bdc729d5d0acd65afd02e9d089f77e3a5c34cbd0752641eba0dc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.50.1/arkavo-0.50.1-x86_64-linux.tar.gz"
      sha256 "a513c239cc5c5352781437a0792ea9040ec1e71768ed8cae187c0227fdb88c91"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end