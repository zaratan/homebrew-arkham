cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.8.9"
  sha256 arm:   "e375148ff73dbc37a81303ed5505cc77ab35a950aa4545fa2bdf497bb72cdf15",
         intel: "86f075cfce96c1f33b2d4fe63cabab5d74a34a0c16edd0932fcb78c7f49929a6"

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
