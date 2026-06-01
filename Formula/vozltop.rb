class Vozltop < Formula
  desc "htop-like real-time TUI for nginx-module-vts"
  homepage "https://github.com/astail/vozltop"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.3.1/vozltop-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "7f648afca898aebab677840fa05e2606bd617412ea6e9f96104777955e77f76c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/vozltop/releases/download/v0.3.1/vozltop-0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "626cc91585edf350fb5ecc6b851ccfddfea14dd73d8be03f11b02dc34ea5dc91"
    end

    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.3.1/vozltop-0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc49f59d90efc9714cd89e8490c9db1740ce615a436c8fa44b0685f3888a2bf9"
    end
  end

  def install
    bin.install "vozltop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vozltop --version")
  end
end
