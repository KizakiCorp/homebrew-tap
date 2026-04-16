cask "kizaki" do
  version "0.1.3"

  on_arm do
    sha256 "a266fc56e83849d8d26ddb20566c3fdf66f38b4577102c658863ee8ab7ee6347"
    url "https://downloads.kizaki.ai/kizaki/#{version}/darwin-arm64/kizaki.tar.gz"
  end

  on_intel do
    # ARM binary runs on Intel Macs via Rosetta 2
    sha256 "a266fc56e83849d8d26ddb20566c3fdf66f38b4577102c658863ee8ab7ee6347"
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
