cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.11"
  sha256 arm:   "61921e0ee9f5f6f5d6302b851d305f8fae025d9feee3d0cf0d5317faa84ee9d9",
         intel: "9789bea31c6992c31f99bfe1a72893a1f0014a3f7e065b4aa675b6f912cef61f"

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
