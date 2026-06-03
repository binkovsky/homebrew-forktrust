class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.7.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.6/forktrust_0.7.6_darwin_arm64.tar.gz"
      sha256 "c979558e5bba5856124a104e992da1c1fdd70b6cf1017114a94a6b7246d9b47e"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.6/forktrust_0.7.6_darwin_amd64.tar.gz"
      sha256 "a20ae8763a3ddae17ed3c9a1449c83cac9d5815542fb927f3a80b3889b361d69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.6/forktrust_0.7.6_linux_arm64.tar.gz"
      sha256 "864f32ed4d6de1d59fdc72b131701774bc078c64b18c64e754b39817068d0ed5"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.6/forktrust_0.7.6_linux_amd64.tar.gz"
      sha256 "64165c01bad4554abf268b1611a6ee19040d4c7d025f6d4ebf645143b0e011bf"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
