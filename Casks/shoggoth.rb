cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.7"
  sha256 arm:   "85cd7fdb581291ad7fd295230e51d05450514ef0de50179c877fa0ac1aae33b9",
         intel: "5263ef49cce285ee4c7fb06e209ab70fe25f0961b8f4b777a1f8893724b96ded"

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
