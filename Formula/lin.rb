class Lin < Formula
  desc "A fast, native CLI for Linear — manage issues, projects, cycles, and more"
  homepage "https://github.com/aaronkwhite/linear-cli"
  version "2026.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-aarch64-macos.tar.gz"
      sha256 "c2a88dfd9e45e8c727bc825cb494d89d7973c13d8ba681a3ee9ca416a2f9256e"
    else
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-x86_64-macos.tar.gz"
      sha256 "9a689b92ecc0716e85b802bbfd649190c6f502cbac5e85e03c0541ae70cc8a75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-aarch64-linux.tar.gz"
      sha256 "987621f4be2f13a5939bd998b66c2c850971a58c0fec75cd6f2d7db001753b7f"
    else
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-x86_64-linux.tar.gz"
      sha256 "f88a937f421af7d266b334bf46a330db0ec485ca7c241e8b98236eaeedc48e03"
    end
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "lin", shell_output("#{bin}/lin --version")
  end
end
