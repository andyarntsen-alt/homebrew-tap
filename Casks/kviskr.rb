cask "kviskr" do
  version "0.5.0"
  sha256 "c1d0803ed24da27c777fa9211c28baaafe823cda608358f3a70d1f39f9d54bc0"

  url "https://github.com/andyarntsen-alt/kviskr-downloads/releases/download/v#{version}/Kviskr.dmg"
  name "Kviskr"
  desc "Norges beste tale-til-tekst — lokalt, privat, med AI-forbedring"
  homepage "https://kviskr.no"

  depends_on macos: ">= :sonoma"

  app "Kviskr.app"

  zap trash: [
    "~/Library/Application Support/com.kviskr.app",
    "~/Library/Preferences/com.kviskr.app.plist",
  ]
end
