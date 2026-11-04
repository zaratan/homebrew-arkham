cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.11.0"
  sha256 arm:   "2134c88d14b676c566ebdb96b7ed3d755607ffd6aeb426a5c68d6740f65f86df",
         intel: "8efd7b38e2cfeb64ee34b6e21cf6dd81057035bf1e98aa22b511c5647227ef65"

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
