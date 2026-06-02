class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.1/forktrust_0.7.1_darwin_arm64.tar.gz"
      sha256 "bcec914c8c082df19f212a389e981423c6d2a97aa7b8905c0b3d8c5bb7a2ae95"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.1/forktrust_0.7.1_darwin_amd64.tar.gz"
      sha256 "de93d27605b254dcc6ca0a20a6eda19bc7ef7609f9c699c6e6fca39084b9af8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.1/forktrust_0.7.1_linux_arm64.tar.gz"
      sha256 "48f5f394fc6fd07b87d0602d2ed16a8b8477d4d917edf92ba3d4cd51a330d1ef"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.1/forktrust_0.7.1_linux_amd64.tar.gz"
      sha256 "8e15f8166d000a7be008fc9b6633c625d64889dfa590091de2fac3bb21f61eaa"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
