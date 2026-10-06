cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.9"
  sha256 arm:   "1648d975a46c4078770deae536f7d11e94ecac795fbc0edb09eeefbd795e9ee3",
         intel: "2ffa5a50ea99682f362b4fa526630b0e32968ea6e10706e7eb78a795a95bead1"

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
