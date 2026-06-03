class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.3/forktrust_0.7.3_darwin_arm64.tar.gz"
      sha256 "d37921b2bcc00e94b7716443d892395ffd8238d0553ca0aa677a0fab6be167c1"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.3/forktrust_0.7.3_darwin_amd64.tar.gz"
      sha256 "f7f901e249a9dba3d5c88d64e58c7409758101d91e6f0e1ff9c96a81090fe9c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.3/forktrust_0.7.3_linux_arm64.tar.gz"
      sha256 "86d99bb36703de67ba10f5ff08413db542b5fa05542b624308b2dd25bef099af"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.7.3/forktrust_0.7.3_linux_amd64.tar.gz"
      sha256 "544f1cfe8dee1e9bc8df698870985e8f8cf18bc7a38956084d43717325189955"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
