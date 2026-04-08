class Lin < Formula
  desc "A fast, native CLI for Linear — manage issues, projects, cycles, and more"
  homepage "https://github.com/aaronkwhite/linear-cli"
  version "2026.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-aarch64-macos.tar.gz"
      sha256 "7ffa986861bad17193ca0b44d7bc2dee5f13bb4653ba991c3f2a60e87d54de8c"
    else
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-x86_64-macos.tar.gz"
      sha256 "1118ea49f2e938e3e0b14ffa4e73f88a4677725a5dada11a52b709fc917983ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-aarch64-linux.tar.gz"
      sha256 "f4e3cd8da48893438a8e7c03103a10c4395e00bf692764a2d59a1bf97f84366e"
    else
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-x86_64-linux.tar.gz"
      sha256 "e76f709b349d481fe64848c56a0e189209275a9a44d98670c28fca80fbcb7744"
    end
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "lin", shell_output("#{bin}/lin --version")
  end
end
