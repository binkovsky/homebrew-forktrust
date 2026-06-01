class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.0/forktrust_0.7.0_darwin_arm64.tar.gz"
      sha256 "363b43d940a59c78d1167accf59fa2fb525c4242f704992348c93cefe771196e"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.0/forktrust_0.7.0_darwin_amd64.tar.gz"
      sha256 "672579646448c302bc35a75d44a8a9c0afa07151c69f1ba618e7e635aa87b9e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.0/forktrust_0.7.0_linux_arm64.tar.gz"
      sha256 "1be481c1739b3e901731355b18608e287dbf3f27b4547e5b186cbe2d23c2be94"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.0/forktrust_0.7.0_linux_amd64.tar.gz"
      sha256 "64f03448624526d4deea9349e3dfe134a9f8f32e8812a634d251d9233fa1b584"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
