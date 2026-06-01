class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.6/forktrust_0.6.6_darwin_arm64.tar.gz"
      sha256 "35290640f92b8f3e81c0554985e0ce766d4834efe7bb1c30beb47feac3381b87"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.6/forktrust_0.6.6_darwin_amd64.tar.gz"
      sha256 "d3fa2d20228dd8b07ea07a59b1b8890ccdf4a195017b8b1ce551d97d13c99c0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.6/forktrust_0.6.6_linux_arm64.tar.gz"
      sha256 "4f61d4cdcac73dea57175ea66f195a5a65ca0a05820401d6fe9dd33866f153cb"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.6/forktrust_0.6.6_linux_amd64.tar.gz"
      sha256 "189b863d7d07fee9fdd1cef4a70a361cc61da522948143570c7266db146eccb6"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
