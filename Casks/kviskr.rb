cask "kviskr" do
  version "0.6.0"
  sha256 "d79efd7887b8036feaaed650d085e8ba6f971c5b60ee79d8662c8146cfb98774"

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
