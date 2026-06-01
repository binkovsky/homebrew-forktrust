class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.6.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.7/forktrust_0.6.7_darwin_arm64.tar.gz"
      sha256 "389e728b03bb64b98c9e48e8f1a4552a76e4441d0a3f8c86060bb962a6c11f74"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.7/forktrust_0.6.7_darwin_amd64.tar.gz"
      sha256 "d392827b6cf7126ab45bf37cf454afc972504d71ef0e7f9b4790ee92c35b2786"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.7/forktrust_0.6.7_linux_arm64.tar.gz"
      sha256 "1c7a5baef26a622ff8f095204ba093a4de783f0f40d7c90a81c7ba6b618dcfc2"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.7/forktrust_0.6.7_linux_amd64.tar.gz"
      sha256 "b2b221193732803e78d9ca2f0de7148765bc7758f499a8c56f01c35b428ce606"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
