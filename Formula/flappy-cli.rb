class FlappyCli < Formula
  desc "Flappy Bird-style dot game for the terminal (also runs in the browser)"
  homepage "https://github.com/astail/flappy-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.9.0/flappy-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b124e915f31f97cdaf6bf3bbc44c6bb3b1c94b93418f28f93e649f643d2a18f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/flappy-cli/releases/download/v0.9.0/flappy-0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06c06c6c645bb1813311ed78d246c639de25de16b73239c7efcd3c827c3c90d7"
    end

    on_arm do
      url "https://github.com/astail/flappy-cli/releases/download/v0.9.0/flappy-0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3dbbbe6fe62301e09988abdc18e15593e23b2d618fba3fba1297267fe0e7efcf"
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
