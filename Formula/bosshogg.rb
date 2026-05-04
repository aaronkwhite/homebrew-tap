class Bosshogg < Formula
  desc "Agent-first PostHog CLI — flags, HogQL, insights, cohorts from the terminal"
  homepage "https://github.com/aaronkwhite/bosshogg-cli"
  version "2026.4.11"

  on_macos do
    on_arm do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "277d5652c0cb4b2b6a6d53bd4c94e0012df7a46dc1cd7caa32eb7dcda9a370dc"
    end
    on_intel do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e56ffa5adc6b61f9293057e37d16c39eb94f884c35ed6e89da5a640039607fa4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edcb6201c9de2c50720cd4976e3cdb4be49dacae910580b5af1f4360e2e905c1"
    end
    on_intel do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de5f8826d29d1a0a0a637b75c3df50c83242cbdda6712fdf1fe9100baae7b211"
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
