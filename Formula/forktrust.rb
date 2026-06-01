class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.6.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.8/forktrust_0.6.8_darwin_arm64.tar.gz"
      sha256 "71a15d03333305cc84707e0e61d9883d8bb8da9e875d86e5e6591547a3316a07"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.8/forktrust_0.6.8_darwin_amd64.tar.gz"
      sha256 "510969c6343ded6943c22dc606640dc07213c82f61421490355c651d9a59d78a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.8/forktrust_0.6.8_linux_arm64.tar.gz"
      sha256 "853f658494556ddfd9b6e56d404bcf4008a0caeb777eb091e79d4a11ee5d8f91"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.8/forktrust_0.6.8_linux_amd64.tar.gz"
      sha256 "8a90cac90844ca6715ed3e92732d51f43155c724982a758066a782682f9309dc"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
