class Kizaki < Formula
  desc "Kizaki CLI"
  homepage "https://kizaki.ai"
  version "0.1.2"

  on_arm do
    url "https://downloads.kizaki.ai/kizaki/0.1.2/darwin-arm64/kizaki.tar.gz"
    sha256 "96e3181ca7528a39e772cc1c1c36b753048c8bedf784cddf37256aa281b857be"
  end

  on_intel do
    # ARM binary runs on Intel Macs via Rosetta 2
    url "https://downloads.kizaki.ai/kizaki/0.1.2/darwin-arm64/kizaki.tar.gz"
    sha256 "96e3181ca7528a39e772cc1c1c36b753048c8bedf784cddf37256aa281b857be"
  end

  def install
    bin.install "kizaki"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/kizaki version")
  end
end
