cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.11.2"
  sha256 arm:   "ba87acb86edf6cc486e7d4e409e58e0a01ba2c92a309aa1f7783d90e1c5d2017",
         intel: "5e99b386754578138091bc57109848f42becb0c767fa47d23c61b272f050238e"

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
