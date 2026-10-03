cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.8"
  sha256 arm:   "b83702fdc19aa7eb73a5b03927fe29bb7bb296af012d47d305b2f8438432dd73",
         intel: "10cb7fa45a6ded1ab1c31603dd5698bff94fa57fe317d3527245cf8be974b23f"

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
