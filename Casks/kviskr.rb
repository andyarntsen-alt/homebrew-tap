cask "kviskr" do
  version "0.7.0"
  sha256 "a935f1470b5c99661620c80798257997033c252961acf8d29d3ea288e6ebf7fa"

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
