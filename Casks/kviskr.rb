cask "kviskr" do
  version "0.6.1"
  sha256 "098f508049119778d844497523a7318a36c2d7e28fc5bec75a216c9edabb1ac0"

  url "https://github.com/andyarntsen-alt/kviskr-downloads/releases/download/v#{version}/Kviskr.dmg"
  name "Kviskr"
  desc "Norsk diktering og tale til tekst for Mac med lokal NB-Whisper"
  homepage "https://kviskr.no"

  depends_on macos: :sequoia

  app "Kviskr.app"

  zap trash: [
    "~/Library/Application Support/com.kviskr.app",
    "~/Library/Preferences/com.kviskr.app.plist",
  ]
end
