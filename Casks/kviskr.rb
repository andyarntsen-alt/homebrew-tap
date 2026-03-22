cask "kviskr" do
  version "0.1.0"
  sha256 "66d231a401e12e5e5c461095017d073afb13fa4c9231d8fc7c29065704695ebf"

  url "https://github.com/andyarntsen-alt/kviskr-downloads/releases/download/v#{version}/Kviskr.dmg"
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
