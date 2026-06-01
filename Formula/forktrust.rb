class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.2/forktrust_0.6.2_darwin_arm64.tar.gz"
      sha256 "4b0c0768df50c64267238e260884ceabe0469b9dd0fd9c20ab09069fe16f9114"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.2/forktrust_0.6.2_darwin_amd64.tar.gz"
      sha256 "659e50f58a5a0bda3edd5f5bae2de8ad13a7f3b3fa7942155b453ebe12979258"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.2/forktrust_0.6.2_linux_arm64.tar.gz"
      sha256 "7f80af70b7d754b712884c86f142bc4a73ec924e33bb69612d25aaf23118dbe4"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.2/forktrust_0.6.2_linux_amd64.tar.gz"
      sha256 "a84d8f450ce7a0eee8c27acc8560b3cfacdd7a44c80ff58d8901a6a225e7c107"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
