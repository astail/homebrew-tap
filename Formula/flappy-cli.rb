class FlappyCli < Formula
  desc "Flappy Bird-style dot game for the terminal (also runs in the browser)"
  homepage "https://github.com/astail/flappy-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.7.0/flappy-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "0b95e64fbfa3ab828b35402bfa6fabe181c5526c64985e2a3f01a1f30e773af4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/flappy-cli/releases/download/v0.7.0/flappy-0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d2087ddb671e82b043d388ccf4029dc0b4896d4401976d58340c99edf3c9e7bf"
    end

    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.7.0/flappy-0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "41ea6c513f6302bfd9a55b83637e38e73bec19977c349051d08d4e7742a61373"
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
