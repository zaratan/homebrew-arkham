cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.11.5"
  sha256 arm:   "50c5be200da15d7e66375313b8dfa2a3ad9d95309b1284816260118777a463be",
         intel: "7ffc3e1af8de0c515717de072513a7592872ac6ee124e49c60eecc3dc062ee2b"

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
