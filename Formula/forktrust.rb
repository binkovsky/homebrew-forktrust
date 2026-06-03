class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.7.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.7/forktrust_0.7.7_darwin_arm64.tar.gz"
      sha256 "bda118bdc88ebc5b489f9a85cfd4ae2fb0ac35d1c344c4501bf722c13495bfb5"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.7/forktrust_0.7.7_darwin_amd64.tar.gz"
      sha256 "ea05f09328d04498fd48f9b10f8c7674d93fe3d18636b03cfc3426f56b25c0e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.7/forktrust_0.7.7_linux_arm64.tar.gz"
      sha256 "8d6eea06fedbb5999430cdadcbfafa83a32f394d4362542d0d9b298499c846ed"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.7/forktrust_0.7.7_linux_amd64.tar.gz"
      sha256 "d4d5c667dadf898549bbd7902a97ef01cd8e21e92c113313bdb5ea1810d96ac2"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
