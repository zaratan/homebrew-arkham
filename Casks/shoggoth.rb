cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.5.17"
  sha256 arm:   "6688d66db1874bf6557f4b01770f78c9798b8c362de333eb2c8d51f0ece2d3b7",
         intel: "dfe3c362119ec71d67af2716728d8ceee2ede29619c776147e2719ecd7119342"

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
