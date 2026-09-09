class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.93.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.93.0/arkavo-0.93.0-aarch64-apple-darwin.tar.gz"
      sha256 "6619f7c0055e1df9aacc55ce8340c528eee50451b714a1a0a27944c9ddab22e9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.93.0/arkavo-0.93.0-x86_64-linux.tar.gz"
      sha256 "e6ca46ecb8e1099602f883f52e87d056f0b9f8f7edd425283d7935591eed87a9"
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
