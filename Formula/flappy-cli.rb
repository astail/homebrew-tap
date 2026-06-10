class FlappyCli < Formula
  desc "Flappy Bird-style dot game for the terminal (also runs in the browser)"
  homepage "https://github.com/astail/flappy-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.2.0/flappy-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "962cbcfe0314fc3179e3f53e3b402f4eb86587c154b40e4cc5df33a77ef65fde"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/flappy-cli/releases/download/v0.2.0/flappy-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6cb605536090b5dcc6cb6953b40ce7d5bf8daf505de89583dafe4f3847cbf29"
    end

    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.2.0/flappy-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5901a1e35a489f8ee52114998300711ddfd5fddd90a7c268cae16a7952ef84f"
    end
  end

  def install
    bin.install "flappy"
  end

  test do
    # TUI は TTY を要するため、TTY 不要の headless モードでスコア（数値）出力を検証する。
    assert_match(/\A\d+\Z/, shell_output("#{bin}/flappy --headless --frames 1").strip)
  end
end
