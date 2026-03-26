cask "kviskr" do
  version "0.3.0"
  sha256 "1cedeafeccbb89f63671db7008e5e1d11d40f77239dc1ad75b329e3fe521bcb8"

  url "https://github.com/andyarntsen-alt/kviskr-downloads/releases/download/v#{version}/Kviskr.dmg"
  name "Kviskr"
  desc "Norges beste tale-til-tekst — lokalt, privat, med AI-forbedring"
  homepage "https://kviskr-web.vercel.app"

  depends_on macos: ">= :sonoma"

  app "Kviskr.app"

  zap trash: [
    "~/Library/Application Support/com.kviskr.app",
    "~/Library/Preferences/com.kviskr.app.plist",
  ]
end
