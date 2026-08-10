cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.8.12"
  sha256 arm:   "933c5276f44be7c23202e8c6da8d91da507642229c258d8c04388cdff8551ccc",
         intel: "80b9efd92783ffa89738a12a4b26aea644c7754ad5661328009ba792b268dc64"

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
