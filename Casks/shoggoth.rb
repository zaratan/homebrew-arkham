cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.8.10"
  sha256 arm:   "480803c45641693d7051655107d12ba96ee8d76403e4c8e17b2ea5dcbf301854",
         intel: "d7900fa63e49b32bd532d04b45f22ee4020193d605bf44f90739503f0ada56f3"

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
