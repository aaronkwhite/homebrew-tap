class Bosshogg < Formula
  desc "Agent-first PostHog CLI — flags, HogQL, insights, cohorts from the terminal"
  homepage "https://github.com/aaronkwhite/bosshogg-cli"
  version "2026.4.10"

  on_macos do
    on_arm do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "32e6a181c10635c7b1af7c34f0d8aee955f5c5b39330812bb723b953010adba7"
    end
    on_intel do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "af2cd22302c6bb8a5f0a28a86fc295dd2b14c1d35e0967a810feef160d148444"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f13ef32e00bca36d86d40c6245e0dc8f212419cc00bbf943a776f9c2ed06a96e"
    end
    on_intel do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c06d7fe071573656e656df1f981e4a31021926d297d17348db57af247d8cd55"
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
