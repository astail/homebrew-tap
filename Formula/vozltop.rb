class Vozltop < Formula
  desc "htop-like real-time TUI for nginx-module-vts"
  homepage "https://github.com/astail/vozltop"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.1.0/vozltop-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b6a63f97573d1014713ac830d0a2aff91cb790b8842ad581a8743827fc0b7079"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/vozltop/releases/download/v0.1.0/vozltop-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a474fdd990f917e8408796e94c787b6e717928a221de66522729c38ab6892f3"
    end

    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.1.0/vozltop-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ab6a44c8d6bc5a73abf5a3c57c349c259788b630dad303a8107dc0ab52f1579b"
    end
  end

  def install
    bin.install "vozltop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vozltop --version")
  end
end
