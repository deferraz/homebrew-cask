cask "jami" do
  version "2022080113"
  sha256 "4397d1aa7620f7828cc14e33c5f810f68323be43eeff9d5fc86442edf104dae1"

  url "https://dl.jami.net/mac_osx/jami#{version}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    regex(/jami(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
