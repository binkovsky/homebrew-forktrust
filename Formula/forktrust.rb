class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.3/forktrust_0.6.3_darwin_arm64.tar.gz"
      sha256 "9bdfcd0533c3cd7f63d0b6e08b7e43567ba6ff968d72ca9d3d513e4c079b5d2b"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.3/forktrust_0.6.3_darwin_amd64.tar.gz"
      sha256 "12e088a651b7a1a30c5fcc7c293eb95e2869eb858e0db02871c66f144c920db9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.3/forktrust_0.6.3_linux_arm64.tar.gz"
      sha256 "ea68df8243b3709e83d4898fd35e989ceddca9ebb5cd9514051daac5bdc534b3"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.3/forktrust_0.6.3_linux_amd64.tar.gz"
      sha256 "fa23f1d999775cb28dea525c80eedf396772f773cc4e8c83347bb17c532e8761"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
