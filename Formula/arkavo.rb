class Arkavo < Formula
  desc "Instant, secure orchestration for AI agents"
  homepage "https://github.com/arkavo-org/arkavo-edge"
  version "0.107.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.107.0/arkavo-0.107.0-aarch64-apple-darwin.tar.gz"
      sha256 "03f57834a0f0cf037c57078010dd0fc1c9eeffa0da7b274a32e1f818232eda32"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arkavo-org/arkavo-edge/releases/download/0.107.0/arkavo-0.107.0-x86_64-linux.tar.gz"
      sha256 "9466b7fe8fa5da5352d2cf858aca78e617f90ce90e5bb58c14d468ada67bc588"
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
