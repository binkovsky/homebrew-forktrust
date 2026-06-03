class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.7.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.8/forktrust_0.7.8_darwin_arm64.tar.gz"
      sha256 "b0f8ccefd46afeae1291f8ef33ea93fc1ce603c927800ad813205edc0b5aba05"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.8/forktrust_0.7.8_darwin_amd64.tar.gz"
      sha256 "ea7dd8bf3e3190a84eedec8c725db766ddeac8e906ec785c90d57efa9b28deef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.8/forktrust_0.7.8_linux_arm64.tar.gz"
      sha256 "ca7c4e9b9234578712d9950b972afee0dd87e4e5fcba4d7b51513f2c425d9ef8"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.8/forktrust_0.7.8_linux_amd64.tar.gz"
      sha256 "3487e982f6b92672df047f4e9d9cbd3b67f63fb24ff8d061031a4704ac9804c5"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
