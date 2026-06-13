class FlappyCli < Formula
  desc "Flappy Bird-style dot game for the terminal (also runs in the browser)"
  homepage "https://github.com/astail/flappy-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.5.0/flappy-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "823351bbc026297daf58d173c9fb2ecb5259a28bc7bd25ede450ee23cedf61c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/flappy-cli/releases/download/v0.5.0/flappy-0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "501e97ad27062e43b628669c0904557a0ed4718601fbe7bbdbc39a1eda89e4e6"
    end

    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.5.0/flappy-0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ab05123a23bcdb96e347b5ac593d621ba9e39d793200abf8a61bab20ce813e6"
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
