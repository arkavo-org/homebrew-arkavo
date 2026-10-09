class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.102.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.102.1/arkavo-0.102.1-aarch64-apple-darwin.tar.gz"
      sha256 "59cddd0f67e7d9b3e164f81bb724766ed9835d18ae4dc4297c531609063d2f3b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.102.1/arkavo-0.102.1-x86_64-linux.tar.gz"
      sha256 "03077bec4d4fe70acd1a2bff1b7848d780cc24b511258d9bfb5c21401402a702"
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
