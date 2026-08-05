cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.8.11"
  sha256 arm:   "e03b5c6f6968d6b14b7d40785ec60bd7f31588a037d4929f9d507074481e5ad3",
         intel: "08eda327e203d8528d91707c064ecb86fdbd13f8b23ddf73e8b2c46d1a4b6a78"

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
