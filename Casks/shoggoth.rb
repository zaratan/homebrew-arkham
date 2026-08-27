cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.9.2"
  sha256 arm:   "32acb587bde01a233fca2d137acf0aa7325cfa333a4dc719fb11b90e09bf18e8",
         intel: "793505deb3aea7da51b9a628a8e0b47154f773dc288e18c988781268180a428d"

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
