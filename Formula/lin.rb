class Lin < Formula
  desc "A fast, native CLI for Linear — manage issues, projects, cycles, and more"
  homepage "https://github.com/aaronkwhite/linear-cli"
  version "2026.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-aarch64-macos.tar.gz"
      sha256 "e972833141d932c1143d73e9d66bac3391d0dee2392af0f9c7268c287f4a5573"
    else
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-x86_64-macos.tar.gz"
      sha256 "f9333d48f2280d2423823e2fa601e7af0967d7794d4e89488d03dc3074d883dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-aarch64-linux.tar.gz"
      sha256 "015e282b21c104d1cdbd7ee8944f59c1a50ddc5a61b481c085f5ff040ed3c756"
    else
      url "https://github.com/aaronkwhite/linear-cli/releases/download/v#{version}/lin-x86_64-linux.tar.gz"
      sha256 "504a3dd0c5021f9563b88779ccc3e87e38c71b46bc0710816ba7a2c4f5b1842a"
    end
  end

  def install
    bin.install "lin"
  end

  test do
    assert_match "lin", shell_output("#{bin}/lin --version")
  end
end
