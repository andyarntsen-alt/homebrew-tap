cask "kviskr" do
  version "0.3.2"
  sha256 "7085d3487698eccb9a002622948406e5f6efe65be6f75ca555370b51d4e02b7f"

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
