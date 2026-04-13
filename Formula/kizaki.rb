class Kizaki < Formula
  desc "Kizaki CLI"
  homepage "https://kizaki.ai"
  version "0.1.0"

  on_arm do
    url "https://downloads.kizaki.ai/kizaki/0.1.0/darwin-arm64/kizaki.tar.gz"
    sha256 "c870dd146ce8f8cf9a7fdd7ce191bcc4ff36cc2f7d3d5898870e1c6b958f0888"
  end

  on_intel do
    # ARM binary runs on Intel Macs via Rosetta 2
    url "https://downloads.kizaki.ai/kizaki/0.1.0/darwin-arm64/kizaki.tar.gz"
    sha256 "c870dd146ce8f8cf9a7fdd7ce191bcc4ff36cc2f7d3d5898870e1c6b958f0888"
  end

  def install
    bin.install "kizaki"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/kizaki version")
  end
end
