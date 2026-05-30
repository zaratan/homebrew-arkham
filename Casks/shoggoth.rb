cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.6.0"
  sha256 arm:   "71b4bc1fddcdeb5336dc48b66a14743bab233b8d37dd33e5566073cdf0faf0b4",
         intel: "fc47bca7ca5f8aae6b848ae100ed152863f144511132e0679fc7fe687a44a4a3"

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
