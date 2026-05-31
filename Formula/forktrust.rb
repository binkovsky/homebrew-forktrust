class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.5.0/forktrust_0.5.0_darwin_arm64.tar.gz"
      sha256 "a036896bd81bd79ad7fcf56892b28aac15e2df8e949add0898d61e708024d397"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.5.0/forktrust_0.5.0_darwin_amd64.tar.gz"
      sha256 "e45ad12c10fe405a3fc6fc943e2f95bb13a26422e8a4119726c24aa8d481976e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.5.0/forktrust_0.5.0_linux_arm64.tar.gz"
      sha256 "73a5d92660f3c66eae53df80c75ed02ffe0296e4a682d41ab2b2acccfb2fcd75"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.5.0/forktrust_0.5.0_linux_amd64.tar.gz"
      sha256 "ecc164f303df17e770aea3198ffb13d81daadc9dc2da061243cc2b4c09db6a9c"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
