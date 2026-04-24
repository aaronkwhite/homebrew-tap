class Bosshogg < Formula
  desc "Agent-first PostHog CLI — flags, HogQL, insights, cohorts from the terminal"
  homepage "https://github.com/aaronkwhite/bosshogg-cli"
  version "2026.4.2"

  on_macos do
    on_arm do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6d403c1addb871868273c93f06b3162bd5a311a9544400e320bd704e48276994"
    end
    on_intel do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c58c92b72fc860aa0999a462814005610c037fadc20117892e42b3b4ae282bad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c4f686892b18417b79dc3db75627239e5b7fb0d1afdfcdbdf91e44237b1f501"
    end
    on_intel do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ccd08418eeb6c3013b673901dea5cf8fbda76fa5cf8c101a2af5258e3fab0a1"
    end
  end

  def install
    bin.install "bosshogg"
    # Shell completions
    generate_completions_from_executable(bin/"bosshogg", "completion", shells: [:bash, :zsh, :fish])
  end

  test do
    system "#{bin}/bosshogg", "--version"
  end
end
