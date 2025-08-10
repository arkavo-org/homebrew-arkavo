class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.25.10"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.25.10/arkavo-0.25.10-aarch64-apple-darwin.tar.gz"
      sha256 "83377fa0ad79252eb3892eb57e9327739659a4c4606b56bf18c6269d920c64be"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.25.10/arkavo-0.25.10-x86_64-linux.tar.gz"
      sha256 "05c803762a5ecf606c39c47934851e197245a674a6422ef6f13a71468a6aa4dd"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end