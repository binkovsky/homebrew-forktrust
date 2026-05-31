class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding sessions"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.1.0/forktrust_0.1.0_darwin_arm64.tar.gz"
      sha256 "736c850d630f13348725643cb616964ae0b6180dddc351a86dabbb8051f979a5"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.1.0/forktrust_0.1.0_darwin_amd64.tar.gz"
      sha256 "0f0c2a1099a8294ca026f6230dc26d243a9e3636a2e0a35872c259d99aba774c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.1.0/forktrust_0.1.0_linux_arm64.tar.gz"
      sha256 "c7964616acebbc6dced89d64064863e316daeafd3b489c0d8e09bffc53e9d4e8"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.1.0/forktrust_0.1.0_linux_amd64.tar.gz"
      sha256 "e30b39cdd3722bac614facf132fb1c70d2d41988119e32998a64c960a93f6231"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
