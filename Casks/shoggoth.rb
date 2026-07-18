cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.8.4"
  sha256 arm:   "8ac5c13a4f94de97bad42bb511985a81fd490776d4c771d2b10a89652122bf94",
         intel: "c2676a271bbd914a8a0c822b928a697323ffa8c2009e487860a548b223ab7007"

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
