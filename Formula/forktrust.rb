class Forktrust < Formula
  desc "Safe-by-default git worktree manager for parallel AI coding agents"
  homepage "https://github.com/binkovsky/forktrust"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.5/forktrust_0.6.5_darwin_arm64.tar.gz"
      sha256 "51c45a50de7b7040e98ad2bcab00a97c9f960bed3d37cb3a8f71273a271ef7da"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.5/forktrust_0.6.5_darwin_amd64.tar.gz"
      sha256 "c5765813cc1285072aee111c87429263cc04b3e03322a2badec409891a6f417e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.5/forktrust_0.6.5_linux_arm64.tar.gz"
      sha256 "3565ab5a93ef88f80a606a83b06db0e1a02b4274f00476faa1683b08ba86ca98"
    end
    on_intel do
      url "https://github.com/binkovsky/forktrust/releases/download/v0.6.5/forktrust_0.6.5_linux_amd64.tar.gz"
      sha256 "68c4c099b678e5c07e084407adb4ddb9ea4644147431be0728e1c78f837819ce"
    end
  end

  def install
    bin.install "forktrust"
  end

  test do
    assert_match "forktrust version", shell_output("#{bin}/forktrust --version")
  end
end
