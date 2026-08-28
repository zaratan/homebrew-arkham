cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.9.3"
  sha256 arm:   "b71d589e84dd4b109b80bfa7a65094225a90f774852b9ef80077a0de508860b9",
         intel: "0099596af9c1e2539657a54300b8ad987634ad399a1245158948713d27fe4ccb"

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
