cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.11.1"
  sha256 arm:   "159b4fd423ccf768a0d24d3b11580025ba0e0ae5b434aa3ef7f1f4c8be377d25",
         intel: "c90662d6080ab527d64766f7a697fd5b6a842fefd1b87c84db189d4fdb1e194a"

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
