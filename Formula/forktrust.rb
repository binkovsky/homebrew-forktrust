class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.0/forktrust_0.6.0_darwin_arm64.tar.gz"
      sha256 "9d6699441067403dfef7472b2874cdda874569891d396eed2fde05568c570b8f"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.0/forktrust_0.6.0_darwin_amd64.tar.gz"
      sha256 "02d51efdd711b88536949f27c66ca01e0ce9eb4f7c02d14a8f42b78c74637cdc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.0/forktrust_0.6.0_linux_arm64.tar.gz"
      sha256 "6af095770bd29c15b3f7d9a65a82fe5a6ae7627370ac4767c8adecd6e3728854"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.0/forktrust_0.6.0_linux_amd64.tar.gz"
      sha256 "bbe86a8c5b2e697ad5fb8c524e3e4fb7e861dfdbb699ca296886a76f3d6ee5c4"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
