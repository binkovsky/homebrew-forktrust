class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.4/forktrust_0.7.4_darwin_arm64.tar.gz"
      sha256 "6c8203d89580b44fff406cd8e0a18e43048a58f2cdcfdef1e5c11b42ce72f70b"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.4/forktrust_0.7.4_darwin_amd64.tar.gz"
      sha256 "05904fcfa795da9aa98de90d8b2eec446b5d01fae1527079086a73d59015927a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.4/forktrust_0.7.4_linux_arm64.tar.gz"
      sha256 "1f700eca8c6d5071ca78cb0cb4c8b41f3c468afa21a73cf1f9ac8a6223962349"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.4/forktrust_0.7.4_linux_amd64.tar.gz"
      sha256 "8e6a8c40e6d7e8f5fb6bd026ec3a19df897b4bb05660d685c17256c88ca61556"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
