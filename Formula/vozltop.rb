class Vozltop < Formula
  desc "htop-like real-time TUI for nginx-module-vts"
  homepage "https://github.com/astail/vozltop"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.4.0/vozltop-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "210d16c69d6cba66c7db02f4b4dbcfc048d12f093fc47c753b2edec69c112673"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/vozltop/releases/download/v0.4.0/vozltop-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f3dd413c543e911f2c3d145f31f0ca0076cd5855b90fc63f6a95b5c20e5f1709"
    end

    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.4.0/vozltop-0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "475bd32d867d8413a07de8947e13489e4eab30a68364d4f3e35e100046c51092"
    end
  end

  def install
    bin.install "vozltop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vozltop --version")
  end
end
