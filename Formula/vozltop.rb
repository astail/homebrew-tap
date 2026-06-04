class Vozltop < Formula
  desc "htop-like real-time TUI for nginx-module-vts"
  homepage "https://github.com/astail/vozltop"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.4.1/vozltop-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "894272f01fa0849575d48055eef45303197fa81523ede9af7dc416534f10629f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/astail/vozltop/releases/download/v0.4.1/vozltop-0.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20cdb1de36d70d592e0d9ef6d9c02776f028d9e4b4fcebbb12ada590c3a9572c"
    end

    on_arm do
      url "https://github.com/astail/vozltop/releases/download/v0.4.1/vozltop-0.4.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e38b3b04c384aa858248797391b5c8684eb7f17435dec21db3267e2df628412"
    end
  end

  def install
    bin.install "vozltop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vozltop --version")
  end
end
