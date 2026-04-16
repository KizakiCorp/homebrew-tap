cask "kizaki" do
  version "0.1.4"

  on_arm do
    sha256 "3ac906a1a64a60c2774d52dc0ab2a46cbb1506a431035447818777a293d85e9b"
    url "https://downloads.kizaki.ai/kizaki/#{version}/darwin-arm64/kizaki.tar.gz"
  end

  on_intel do
    # ARM binary runs on Intel Macs via Rosetta 2
    sha256 "3ac906a1a64a60c2774d52dc0ab2a46cbb1506a431035447818777a293d85e9b"
    url "https://downloads.kizaki.ai/kizaki/#{version}/darwin-arm64/kizaki.tar.gz"
  end

  name "Kizaki CLI"
  desc "Developer CLI for the Kizaki managed backend platform"
  homepage "https://kizaki.ai"

  livecheck do
    url "https://downloads.kizaki.ai/kizaki/latest.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  binary "kizaki"

  zap trash: [
    "~/.kizaki",
  ]
end
