class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.1/forktrust_0.6.1_darwin_arm64.tar.gz"
      sha256 "222fa5eae43973758552394294f11099fc3f9756a198ad43a77f0fe0f24bdee1"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.1/forktrust_0.6.1_darwin_amd64.tar.gz"
      sha256 "c5f827e7cc3189c7f3102c53e6d2adc08b213abe17f1919359a87d51a4653134"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.1/forktrust_0.6.1_linux_arm64.tar.gz"
      sha256 "f079252f2638cadf6b701b664c66b69897f038ff52867841438b58d29ed5f98d"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.1/forktrust_0.6.1_linux_amd64.tar.gz"
      sha256 "239e39a0329f92b285d1679b7fe47df2fa0039c21160c0d59f60f78f436121b6"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
