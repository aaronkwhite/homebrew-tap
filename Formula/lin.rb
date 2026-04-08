class Lin < Formula
  desc "A fast, native CLI for Linear — manage issues, projects, cycles, and more"
  homepage "https://github.com/aaronkwhite/linear-cli"
  url "https://crates.io/api/v1/crates/lincli/2026.4.1/download"
  sha256 "b55ac81b3529004712e3d021f2b8679088dbfc353026097db7292dbeb4c523e3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lin", shell_output("#{bin}/lin --version")
  end
end
