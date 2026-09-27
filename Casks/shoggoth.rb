cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.6"
  sha256 arm:   "d4edbf449165647d22c022f7e9ea83af2c3cca7da73c36a59160716717cc61de",
         intel: "d7c568db868b2fe4991ecea14c85b6f9676beb3cae71a320ec7666d1a69bb2af"

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
