cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.7.6"
  sha256 arm:   "2079772b36baf8266b08863de2e11bea819fd30c6c64450966fa931fa3111811",
         intel: "9ace55f3dfa789d8d2dbc39b4eebec08a1aea7f06368d7ac6371eb2f5c555c38"

  url "https://github.com/tokeeto/shoggoth/releases/download/v#{version}/Shoggoth-#{arch}.zip"
  name "Shoggoth"
  desc "Card creation tool for Arkham Horror: The Card Game"
  homepage "https://github.com/tokeeto/shoggoth"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Shoggoth.app"

  zap trash: [
    "~/Library/Application Support/Shoggoth",
    "~/Library/Caches/com.tokeeto.shoggoth",
    "~/Library/Preferences/com.tokeeto.shoggoth.plist",
    "~/Library/Saved Application State/com.tokeeto.shoggoth.savedState",
  ]
end
