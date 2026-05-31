class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding sessions"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.3.0/forktrust_0.3.0_darwin_arm64.tar.gz"
      sha256 "09020956e6aff6d2ef928d755059b4c151312ca22819257940db5804f3877bb2"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.3.0/forktrust_0.3.0_darwin_amd64.tar.gz"
      sha256 "1af2355aa480d1cb36e6744534b16b1f6f2bb3209f770232c1085b1776b79a58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.3.0/forktrust_0.3.0_linux_arm64.tar.gz"
      sha256 "6e79cc17afe84a290193b22ec7e9d25f66c98a2b522647c1d5612fee03a6cd2a"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.3.0/forktrust_0.3.0_linux_amd64.tar.gz"
      sha256 "3eeca3d0b02422eac53916b40983d867245e73554dcd28ecb2b7d8235dd029af"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
