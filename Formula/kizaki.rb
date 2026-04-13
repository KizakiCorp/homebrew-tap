class Kizaki < Formula
  desc "Kizaki CLI"
  homepage "https://kizaki.ai"
  version "0.1.0"

  on_arm do
    url "https://downloads.kizaki.ai/kizaki/0.1.0/darwin-arm64/kizaki.tar.gz"
    sha256 "230bf83ad55345419782037927e400461ceb583e204bf1b1ece279bef9a42673"
  end

  on_intel do
    # ARM binary runs on Intel Macs via Rosetta 2
    url "https://downloads.kizaki.ai/kizaki/0.1.0/darwin-arm64/kizaki.tar.gz"
    sha256 "230bf83ad55345419782037927e400461ceb583e204bf1b1ece279bef9a42673"
  end

  def install
    bin.install "kizaki"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/kizaki version")
  end
end
