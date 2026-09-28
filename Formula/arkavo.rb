class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.98.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.98.0/arkavo-0.98.0-aarch64-apple-darwin.tar.gz"
      sha256 "7d858ed40763a71ad5fa04177c8f6e28b4e252bf2459a35771cf7503eac67f2e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.98.0/arkavo-0.98.0-x86_64-linux.tar.gz"
      sha256 "a966f5699450b9d4092ca974ff907a4eb710c7709493c0f67b8d05555b81d7f6"
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
