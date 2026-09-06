class Lin < Formula
  desc "A fast, native CLI for Linear — manage issues, projects, cycles, and more"
  homepage "https://github.com/aaronkwhite/linear-cli"
  version "2026.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-aarch64-macos.tar.gz"
      sha256 "32768c10253a4ba55013b651cb5c8bae8b83a658e21e0173b498a44403137ad4"
    else
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-x86_64-macos.tar.gz"
      sha256 "28b6dea6b506342c83429332c55862afe2d673b7068da0ddd030c8ac2ddc4b0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-aarch64-linux.tar.gz"
      sha256 "b63c44c551acd1454069ceefc1b1b46912396ab4166402b807e739470a05f6de"
    else
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-x86_64-linux.tar.gz"
      sha256 "f56ed8b99c20bbf42f271aef620aabadb7ecd8f436f961a1e4de3563e4256185"
    end
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "lin", shell_output("#{bin}/lin --version")
  end
end
