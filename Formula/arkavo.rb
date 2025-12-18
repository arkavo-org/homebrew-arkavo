class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.47.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.3/arkavo-0.47.3-aarch64-apple-darwin.tar.gz"
      sha256 "d2544eb73e4a8920faf80e054ecdfbe8ffbc92ec271a135f7a5512cf019dc334"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.47.3/arkavo-0.47.3-x86_64-linux.tar.gz"
      sha256 "285a591cfd72025b9886a65081e619cb9f76f6547422b5e19cf50d96177a4631"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end