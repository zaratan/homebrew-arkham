cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.8.6"
  sha256 arm:   "bf0d706d1ee1f98aaa7ad04d5f1e7ea99b1a6e4472adb042b03d9edd3c3dc0e2",
         intel: "b55788a42a5d17210c88e4e7dfd7089863301de053ed08fbaf47596c99656422"

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
