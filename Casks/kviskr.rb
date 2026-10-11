cask "kviskr" do
  version "0.7.1"
  sha256 "29ff88ee68301e652e1f4b7e58a041259cdfb563c95caed1522c2e73729c37ef"

  url "https://github.com/andyarntsen-alt/kviskr-downloads/releases/download/v#{version}/Kviskr.dmg"
  name "Kviskr"
  desc "Norsk diktering og tale til tekst med lokal NB-Whisper"
  homepage "https://kviskr.no/"

  livecheck do
    url "https://kviskr.no/api/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Kviskr.app"

  zap trash: [
    "~/Library/Application Support/com.kviskr.app",
    "~/Library/Preferences/com.kviskr.app.plist",
  ]
end
