cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.7.3"
  sha256 arm:   "eb8038631265e98e0016a29b2425e3b850b9792c29e4f14c0d01dc4b85b3f4bf",
         intel: "eca373dbc55621df85d4fe7ba27084d51bb72e0466e48388105bbaf670088b76"

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
