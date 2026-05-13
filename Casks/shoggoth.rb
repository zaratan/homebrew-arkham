cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.5.15"
  sha256 arm:   "c19c84e596a06bcc4f062f12dfe4c668e9aec142c39d370a5396bb0ce5d90f92",
         intel: "b3c633e86e3080c9fa3e5d6b6bfd927c4fc99347a46ea72fe952aff14bcf2168"

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
