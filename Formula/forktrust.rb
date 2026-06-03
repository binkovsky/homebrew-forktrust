class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.5/forktrust_0.7.5_darwin_arm64.tar.gz"
      sha256 "420183e62056f90891e0ab41c28060521267d1630fb8741e29809bb78aafa374"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.5/forktrust_0.7.5_darwin_amd64.tar.gz"
      sha256 "ff73e6a79de9a16bb3369f3026dda22aceef4314f1c68b51b1aedf832e04cbfa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.5/forktrust_0.7.5_linux_arm64.tar.gz"
      sha256 "2b85caca28cca3172d3680d34ec3d479ebe53330f55e8d4cdb801acc8a291dd4"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.5/forktrust_0.7.5_linux_amd64.tar.gz"
      sha256 "9be2b042cdda968996225fe9cc83508f0ad83dd6104c00f36d87f810ad717a84"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
