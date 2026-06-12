class FlappyCli < Formula
  desc "Flappy Bird-style dot game for the terminal (also runs in the browser)"
  homepage "https://github.com/astail/flappy-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.4.0/flappy-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "69426f89f43a1c6f80f1ef5dba45d20b2ca0af975bb64394e360bfae7585ebe8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/flappy-cli/releases/download/v0.4.0/flappy-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1fc72e8dc54c4838bdc636f9ff64216f671e680e0047aa3991783ebc787be539"
    end

    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.4.0/flappy-0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6ccb461fdfd803ec1f912f0391f3d60652708ffc2943b03d3c470aa2e4183243"
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
