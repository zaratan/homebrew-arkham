cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.7.2"
  sha256 arm:   "86c964ba707b44d5d0ed8ef01222dcab3a611e35276068e9543e5af5e0687b28",
         intel: "25d3e6e569876a7cbc6b9b5355cadefdb3eab33af0c94364beeac74af3a5501a"

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
