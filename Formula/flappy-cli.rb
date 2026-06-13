class FlappyCli < Formula
  desc "Flappy Bird-style dot game for the terminal (also runs in the browser)"
  homepage "https://github.com/astail/flappy-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.6.0/flappy-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "d155812a0165abf0f2cc5ce626ca32c6a7c80682b5da25b2332742d9ff99c208"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/flappy-cli/releases/download/v0.6.0/flappy-0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "25a74e97dce65f056a3014f8911298cce1965451c4f6ed35f49492c5563b9c0c"
    end

    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.6.0/flappy-0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e83c0dd2fd78664072b480d6ce6dd66d3ccc3f10c78c1747bfd8debb1db4d91f"
    end
  end

  def install
    bin.install "flappy" => "flappy-cli"
  end

  test do
    # TUI は TTY を要するため、TTY 不要の headless モードでスコア（数値）出力を検証する。
    assert_match(/\A\d+\Z/, shell_output("#{bin}/flappy-cli --headless --frames 1").strip)
  end
end
