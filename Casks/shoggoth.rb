cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.0"
  sha256 arm:   "4955e081a86ccb6f3afcf7b430187c1e1bf61a68beb486ee40c43889cb1da08d",
         intel: "86c00d38265b314ffe625c5e76310110831fb87cf7a8d972c8a384dbcffcc57e"

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
