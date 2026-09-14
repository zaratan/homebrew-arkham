cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.3"
  sha256 arm:   "3fc1bdf449b8a4a4a4aa878db0233de42cd2b5009b16937c6eed859614368cd6",
         intel: "95da1a8df168216593cec11ed173063ab42c0748e6a370e5255cdc576ce0a3e4"

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
