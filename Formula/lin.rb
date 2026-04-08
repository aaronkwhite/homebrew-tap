class Lin < Formula
  desc "A fast, native CLI for Linear — manage issues, projects, cycles, and more"
  homepage "https://github.com/aaronkwhite/linear-cli"
  url "https://crates.io/api/v1/crates/lincli/2026.4.2/download"
  sha256 "00f29d27267d78f3e280c453c969be0c852bd8ca0fa5576625b46b20a3a0e302"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lin", shell_output("#{bin}/lin --version")
  end
end
