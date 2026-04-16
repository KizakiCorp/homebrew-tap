class Kizaki < Formula
  desc "Kizaki CLI"
  homepage "https://kizaki.ai"
  version "0.1.1"

  on_arm do
    url "https://downloads.kizaki.ai/kizaki/0.1.1/darwin-arm64/kizaki.tar.gz"
    sha256 "051ff1d88b3a83f04b3845f3e3ed4ac38816ed5177c3503a1a2f35f0eee074c6"
  end

  on_intel do
    # ARM binary runs on Intel Macs via Rosetta 2
    url "https://downloads.kizaki.ai/kizaki/0.1.1/darwin-arm64/kizaki.tar.gz"
    sha256 "051ff1d88b3a83f04b3845f3e3ed4ac38816ed5177c3503a1a2f35f0eee074c6"
  end

  def install
    bin.install "kizaki"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/kizaki version")
  end
end
