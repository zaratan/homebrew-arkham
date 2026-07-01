cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.7.0"
  sha256 arm:   "12acd26b953d8892846b3ac072ff41c91328f3968c949304b1a7cffe10f6faa4",
         intel: "a484c7c76b4c04bca5e83870d7b5608ddcb3d91087cd7c32e322c402474e2499"

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
