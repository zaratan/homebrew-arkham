cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.8.13"
  sha256 arm:   "56091002162eb96c42a5be8f8f4e72cfeecda3fa972d358fa0246ff06b9236d0",
         intel: "f1ddd9d843244322dd4977d44c9c39e89b248e63a7cd9db2ebb68f952661be1c"

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
