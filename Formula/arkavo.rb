class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.94.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.94.0/arkavo-0.94.0-aarch64-apple-darwin.tar.gz"
      sha256 "407e1c7eccdbc17c5e6b63f1a5af1bd19b7b7f6af8cbb1c03a7573f691e1533c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.94.0/arkavo-0.94.0-x86_64-linux.tar.gz"
      sha256 "e4ed5e4011e7cd6a4ca5cebfdc620ed20a6dfdb41d498e91ceaa2f1ce25909db"
    end
  end

  def install
    bin.install "arkavo"
  end

  def caveats
    <<~EOS
      Arkavo downloads AI models (several GB) on first run to the Hugging Face
      cache, by default:
        ~/.cache/huggingface/hub        (or $HF_HOME/hub if HF_HOME is set)

      `brew uninstall arkavo` removes the binary but NOT these models.
      To see what was downloaded and reclaim the space after uninstalling:
        du -sh ~/.cache/huggingface/hub
        rm -rf ~/.cache/huggingface/hub   # shared with other Hugging Face tools, if any
    EOS
  end

  test do
    system "#{bin}/arkavo", "--version"
  end
end
