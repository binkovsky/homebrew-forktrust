class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.4/forktrust_0.6.4_darwin_arm64.tar.gz"
      sha256 "8264ae2fe6aab5a9451d5acc3110c3c562092b46505ba49d4206414d2a1bc2a0"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.4/forktrust_0.6.4_darwin_amd64.tar.gz"
      sha256 "8ef489f51cd5ed8d582a6e911f70ef738e5034edc71970219df8248dace97bf1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.4/forktrust_0.6.4_linux_arm64.tar.gz"
      sha256 "8aab8ceda6cd17a03a81a066783751551027f9f3dae70b589e7402029c3f99de"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.4/forktrust_0.6.4_linux_amd64.tar.gz"
      sha256 "e053145537b818b894c321790d77d5f6583dca950c95faa36f6a3c4b69a4ed1e"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
