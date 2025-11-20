class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.41.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.41.2/arkavo-0.41.2-aarch64-apple-darwin.tar.gz"
      sha256 "8631e5154ebd8746f79a764a9febb8fa02455f8cceddd1732cdae551cbed118a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.41.2/arkavo-0.41.2-x86_64-linux.tar.gz"
      sha256 "a9d6653706f4e26fef829e96405956081014e439591b4869f45674180a4ec787"
    end
  end

  def install
    bin.install "arkavo"
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end