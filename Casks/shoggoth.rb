cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.7.10"
  sha256 arm:   "08f052df21748daaef92b8b94d90eadcb43e7ecc07b05ffff90ceadc648e5b31",
         intel: "38346ea3a7d6c3a2a33cd431a844d72db4a18d56e350ca832d5ef5862911f74c"

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
