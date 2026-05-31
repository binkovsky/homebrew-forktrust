class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding sessions"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.2.0/forktrust_0.2.0_darwin_arm64.tar.gz"
      sha256 "7cb635ef345023775ca165c15c5d76a478bdda7325a1ca0196361ee35ee048c9"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.2.0/forktrust_0.2.0_darwin_amd64.tar.gz"
      sha256 "a9d113118068facea076971a5fb4f08a28f24d474f998763b916cc99c8dc51f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.2.0/forktrust_0.2.0_linux_arm64.tar.gz"
      sha256 "bf9412d5f3d1daae8a6d023b1aa8db9d3c745b6d4fc6a6e2c8c511d9177e750b"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.2.0/forktrust_0.2.0_linux_amd64.tar.gz"
      sha256 "7495a7cd30c658e42305a978bdc270951e89ebe5368c8c6d081cb93f474ee3d5"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
