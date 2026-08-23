cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.9.1"
  sha256 arm:   "16e27c211e200e07f84a4001a5c26743d45c58d6e4246fc8fba668f7ad1a1484",
         intel: "3eaa6c95d670bc2bb71be777c6e4d830c98fccef78da9ee122d840a3fbf208d5"

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
