class Vozltop < Formula
  desc "htop-like real-time TUI for nginx-module-vts"
  homepage "https://github.com/astail/vozltop"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.3.0/vozltop-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "77b625431b836359c2550a162cd0cbf5d9b6c21866495336c55a0ca43597f4bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/vozltop/releases/download/v0.3.0/vozltop-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ef4f900a72b3f12412461f45bc6982e7b78c930936f649ae1ca80e010b48870"
    end

    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.3.0/vozltop-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "720ae8950aae075f31e5a36d2484bba32898e7e8a93989b44603e594403b2685"
    end
  end

  def install
    bin.install "vozltop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vozltop --version")
  end
end
