cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.5.16"
  sha256 arm:   "5d7225c6ee28036d4de4c22c726330e32a04a7eef71fe1e758a3cbd8affe6f48",
         intel: "106d3a8fa65fb0b7f3d5334feb9174f6412e57a80ab236417a869daa8b2ba160"

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
