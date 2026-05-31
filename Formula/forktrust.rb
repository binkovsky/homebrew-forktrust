class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.5.1/forktrust_0.5.1_darwin_arm64.tar.gz"
      sha256 "072156be5dcfc37714915144988cdb3d3131e853ca77e377b6cd8721b08120d2"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.5.1/forktrust_0.5.1_darwin_amd64.tar.gz"
      sha256 "952ccbe474b23b017f93156e16681db72fd2eb52c2974b1e2eeb47219b60918f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.5.1/forktrust_0.5.1_linux_arm64.tar.gz"
      sha256 "f4b51c7c3dea4d86f833c78f61d2d43fe547b67e56719d5df585d960896fa666"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.5.1/forktrust_0.5.1_linux_amd64.tar.gz"
      sha256 "8ab11c76f621dfb0619f991c12e0824e3fb7be6c554653ee0f99d5e8e6f5f02e"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
