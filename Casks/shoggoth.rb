cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.5.20"
  sha256 arm:   "7bb3e6df5f213af98f8bfd889b9466f3c88818557a07fc031fa9bb3e7cb93e75",
         intel: "cff8281ee9ba52700829e8971128236d44df6ab9991c7a244ddb2ce34d79006c"

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
