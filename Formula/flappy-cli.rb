class FlappyCli < Formula
  desc "Flappy Bird-style dot game for the terminal (also runs in the browser)"
  homepage "https://github.com/astail/flappy-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.3.0/flappy-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "5545c4bf6cf74c21fab676bd1f9d888d1ca21b67f1557fc91a596c8504eb02ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/flappy-cli/releases/download/v0.3.0/flappy-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "04a1606b4f6aee714cd5c0949debecde72c20cec6f7a0a9b232db75ceca4a01e"
    end

    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.3.0/flappy-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "41cb4064eda93334d2ff86f2758e9d4c8246fcfb2459bca070db6f9272653551"
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
