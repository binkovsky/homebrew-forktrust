class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.6.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.9/forktrust_0.6.9_darwin_arm64.tar.gz"
      sha256 "a7194962961aeefdb1b460fb1f16775cf924c78f4da78b06502ca23b2b3d34b1"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.9/forktrust_0.6.9_darwin_amd64.tar.gz"
      sha256 "a444cac7091bc09a22b07f1e409cf9e7faee854a2a5d4730006f93a7004c9013"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.9/forktrust_0.6.9_linux_arm64.tar.gz"
      sha256 "aa59c48919c0e28d73511f4104bcda3eb816f25d340928c62ca109e479a34df0"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.9/forktrust_0.6.9_linux_amd64.tar.gz"
      sha256 "35f145e8b5ea7453939ef1b877a096dc0464fcf379a6e7664cc7cc77dc8f0b8a"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
