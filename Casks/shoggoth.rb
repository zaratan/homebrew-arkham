cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.5.18"
  sha256 arm:   "d7c11764cfefc5a6b4c20b0a6925ff38a3eef8a81b8487d0cdb421b045ccab56",
         intel: "f50802eeed123d2d5e1f1a68029493cce1466e533bce087bf1bfc23b0b1a0af7"

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
