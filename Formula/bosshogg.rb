class Bosshogg < Formula
  desc "Agent-first PostHog CLI — flags, HogQL, insights, cohorts from the terminal"
  homepage "https://github.com/aaronkwhite/bosshogg-cli"
  version "2026.11.0"

  on_macos do
    on_arm do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bc22684991d6eaac6aa329f3ea2092bf89e443cea886133390303983af34c8b7"
    end
    on_intel do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "09ca52e0d7b3059d420f8d53a17f43361f7e85accf6389a2c459cbc4b1be81cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "907c4d0bf0cdd4703a3ff582cc44a41ccb388444bae2a318b49283863bf1435c"
    end
    on_intel do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "884bd20a76d0f4aea0c5613238233b6f2884877b8d268de6afceb48b4f3978f7"
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
