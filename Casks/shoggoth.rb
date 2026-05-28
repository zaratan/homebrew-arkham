cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.5.22"
  sha256 arm:   "756ce04f01379ed46a2a63a057ab7f7542ce4f406111d0661feac740bd33fa1d",
         intel: "bbdce4ab7d326a7a8d1db97fe8712f8f52b10a99b061152504844d80123460da"

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
