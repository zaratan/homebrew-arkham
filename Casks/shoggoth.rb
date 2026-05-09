cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.5.11"
  sha256 arm:   "f4640d7def358736468767183395d8f55bfc94c644dee33c8614d523ac4c874f",
         intel: "4e0774458ffffd5af5723096652978b79d7a5362d6a70e4264831c3953bd1365"

  url "https://github.com/tokeeto/shoggoth/releases/download/v#{version}/Shoggoth-#{arch}.zip"
  name "Shoggoth"
  desc "Card creation tool for Arkham Horror: The Card Game"
  homepage "https://github.com/tokeeto/shoggoth"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Shoggoth.app"

  zap trash: [
    "~/Library/Application Support/Shoggoth",
    "~/Library/Caches/com.tokeeto.shoggoth",
    "~/Library/Preferences/com.tokeeto.shoggoth.plist",
    "~/Library/Saved Application State/com.tokeeto.shoggoth.savedState",
  ]
end
