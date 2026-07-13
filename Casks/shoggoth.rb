cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.8.2"
  sha256 arm:   "7d21445a6bd74c1f4e54e84e1db34a12c3f3ede7e3cff85148d744c07e7fc916",
         intel: "62269fa49bd15507bc3585489aec26d3bd41dafbe97c1c6f3a951b45a78e2015"

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
