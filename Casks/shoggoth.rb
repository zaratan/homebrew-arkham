cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.12"
  sha256 arm:   "001c1a644b0644d56730f733c2720cdb835e4eb8ac664f8c5b47fdc0bdb3f361",
         intel: "2d80e38f0c4ec195076362f811dfc25beea2f9de6488cf04ae74a8868e665b62"

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
