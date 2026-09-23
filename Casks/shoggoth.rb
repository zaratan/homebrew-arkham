cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.4"
  sha256 arm:   "95f68c1703977bffaee0f195e2c8bda206c2565e1c4eb837030e8ee4e9e54cb5",
         intel: "44792709a9b994bd069fb25a34d6b1ff2185116d026379ed36eca184b73de278"

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
