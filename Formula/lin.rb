class Lin < Formula
  desc "A fast, native CLI for Linear — manage issues, projects, cycles, and more"
  homepage "https://github.com/aaronkwhite/linear-cli"
  version "2026.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-aarch64-macos.tar.gz"
      sha256 "11f7c36a3ff48745fdc4d39ac85dc6a72eb1cad4cd5654f4d57a5fbe819afdad"
    else
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-x86_64-macos.tar.gz"
      sha256 "00c1ea86cc3a8c6c75363ea6ddcec61710a9770bf1288352e01155dc19b19340"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-aarch64-linux.tar.gz"
      sha256 "7905a82b76dc30a43f8c0d29c6b2fbd1d5cfc3b8d324d9077ca8cbb320c6bab9"
    else
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-x86_64-linux.tar.gz"
      sha256 "4499b6cd80260818eb99fe43a65e93d57ec5a8f727229fb3caba6d3653049f81"
    end
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "lin", shell_output("#{bin}/lin --version")
  end
end
