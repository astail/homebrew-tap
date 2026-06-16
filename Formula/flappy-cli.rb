class FlappyCli < Formula
  desc "Flappy Bird-style dot game for the terminal (also runs in the browser)"
  homepage "https://github.com/astail/flappy-cli"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.7.1/flappy-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "8c2baeda75978e648d8e296e75fae3b6679f51399538d5a37bc86ac560f90498"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/flappy-cli/releases/download/v0.7.1/flappy-0.7.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67d7dec28ee410624fe2ab128082957d1587228eaa2a6606d1dd9e629cb38b1d"
    end

    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.7.1/flappy-0.7.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8b8d98d3d130a3d71eb6fda00261fae8660bbf056f7d4747d000a80d408cae4"
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
