class Vozltop < Formula
  desc "htop-like real-time TUI for nginx-module-vts"
  homepage "https://github.com/astail/vozltop"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.2.1/vozltop-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "f14d21aabda64fee1d4eb6ebbdb58743804d8e760b5e51c73991d5b82f935ae5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/vozltop/releases/download/v0.2.1/vozltop-0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85ae62fc5f710c8dd0accae0cd33a575a89e436c22e41c39696cb8dac76e1006"
    end

    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.2.1/vozltop-0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9e2076eae82b163fec6524684e68c1528b5473d05c02a2fda8ebbe3be9d8bf57"
    end
  end

  def install
    bin.install "vozltop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vozltop --version")
  end
end
