cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.7.14"
  sha256 arm:   "9f6ab594c6df37ddffbb78f9752a512d393a345eda9c02088aa10d88cc0df859",
         intel: "f6c2243b1fe99e5cda2ab116a1c60141bbc69ed8e69e7f5a9fc37e0956126fe6"

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
