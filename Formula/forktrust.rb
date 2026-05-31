class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.4.0/forktrust_0.4.0_darwin_arm64.tar.gz"
      sha256 "e011f554b4d6d693fae13231249d47ab68f559c4cb06c50a87eab921b1510d83"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.4.0/forktrust_0.4.0_darwin_amd64.tar.gz"
      sha256 "35619721f2b85b09a64a01e490fbf66293fe3ad94e74e7c1a63eeabf4ee18ed0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.4.0/forktrust_0.4.0_linux_arm64.tar.gz"
      sha256 "c368e23657047f2466818c764f6e24a0913a375f027fce1560ddaefb8b499a55"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.4.0/forktrust_0.4.0_linux_amd64.tar.gz"
      sha256 "b74caad3c254c6282975e42234d13751d6b90891c7ef44354a2310a9ec9e5b11"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
