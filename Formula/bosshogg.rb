class Bosshogg < Formula
  desc "Agent-first PostHog CLI — flags, HogQL, insights, cohorts from the terminal"
  homepage "https://github.com/aaronkwhite/bosshogg-cli"
  version "2026.5.3"

  on_macos do
    on_arm do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "eb2d8ca3c73059ed514bfa6f1e26b96770bee6013fd809bda62f1461cd95f186"
    end
    on_intel do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "030a12c85986fb0a5040efad281bee5ead07fe68c741e54b6ce8fc5d20e622d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2499a217836359cb791539e73db8c24d9ca0fa7bc76f55f1ca19eb5797b71b74"
    end
    on_intel do
      url "https://github.com/aaronkwhite/bosshogg-cli/releases/download/v#{version}/bosshogg-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08510a6d84c60f2d75d83294d54f4497d4b5a820f4d087f90bb6890308e0e8c4"
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
