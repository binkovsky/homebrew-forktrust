class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.7.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.9/forktrust_0.7.9_darwin_arm64.tar.gz"
      sha256 "23f3749b0379646c7b87faf67aae7c616d60ce4d47a54ff4f681f40aa6e8ba08"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.9/forktrust_0.7.9_darwin_amd64.tar.gz"
      sha256 "dc45e6745fbe57d2dc33d4b765096339dd1eea7a058933573b52f76a00df74fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.9/forktrust_0.7.9_linux_arm64.tar.gz"
      sha256 "41cec2814bc591e9fa742f8929a30fbe0e23f1dba3ee37be6303630787defb80"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.9/forktrust_0.7.9_linux_amd64.tar.gz"
      sha256 "eeeb26ca4a462c355e98bcf10ae0673ed793df9d1c9812f24ccdd8f04af2275a"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
