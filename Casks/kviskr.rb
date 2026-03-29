cask "kviskr" do
  version "0.3.3"
  sha256 "1c5615b5336b285f8535da4873a30a708f51748635513db9b4a3f01d71f6d734"

  url "https://github.com/andyarntsen-alt/kviskr/releases/download/v#{version}/Kviskr.dmg"
  name "Kviskr"
  desc "Norges beste tale-til-tekst — lokalt, privat, med AI-forbedring"
  homepage "https://github.com/andyarntsen-alt/kviskr"

  depends_on macos: ">= :sonoma"

  app "Kviskr.app"

  zap trash: [
    "~/Library/Application Support/com.kviskr.app",
    "~/Library/Preferences/com.kviskr.app.plist",
  ]
end
