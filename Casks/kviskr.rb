cask "kviskr" do
  version "1.0.0"
  sha256 "616c42837ac773032ce9887a814331d0b9d273f04fb88681ef905456f37d73a8"

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
