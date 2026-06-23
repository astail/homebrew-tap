class FlappyCli < Formula
  desc "Flappy Bird-style dot game for the terminal (also runs in the browser)"
  homepage "https://github.com/astail/flappy-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.8.0/flappy-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "f2395b9bae5662d2170c5c4a02da0f995e0fa7a25dcc45be573f13db1d06a654"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/flappy-cli/releases/download/v0.8.0/flappy-0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dccf3ded2d53ab1aad35484c00759838f65039f0c81829314d62512abb8e490a"
    end

    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.8.0/flappy-0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3f4e521db0fe60ca9cb5fa68bd780f1e00d86e4cb3bab930f0baf1cab136d670"
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
