cask "kviskr" do
  version "0.5.2"
  sha256 "c57a36d04ce5c68fddb1c0f124cc4088ea15abd29c7635ee3a24200916b7b6ee"

  url "https://github.com/andyarntsen-alt/kviskr-downloads/releases/download/v#{version}/Kviskr.dmg"
  name "Kviskr"
  desc "Norges beste tale-til-tekst — lokalt, privat, med AI-forbedring"
  homepage "https://kviskr.no"

  depends_on macos: ">= :sequoia"

  app "Kviskr.app"

  zap trash: [
    "~/Library/Application Support/com.kviskr.app",
    "~/Library/Preferences/com.kviskr.app.plist",
  ]
end
