class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.2/forktrust_0.7.2_darwin_arm64.tar.gz"
      sha256 "17c934bc2220baab3eb79c9dfb05ff7c1ff42154c5943c366a55c41e9fc50378"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.2/forktrust_0.7.2_darwin_amd64.tar.gz"
      sha256 "6158bf342397f5cf938806b79ef02b816184747fcb768ca752cf8604459ef644"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.2/forktrust_0.7.2_linux_arm64.tar.gz"
      sha256 "24df1d6f28dd0e5d7fc1d3820415422cbf0a3e420cda0a00f3a55c609428e78d"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.2/forktrust_0.7.2_linux_amd64.tar.gz"
      sha256 "07513e074b48cd7c9f597b19d0b34f78c07c65805d327eda5ca69c13c3cae693"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
