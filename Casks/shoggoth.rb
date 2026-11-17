cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.11.4"
  sha256 arm:   "e946da1f23e3bbefd61198a100d3a8f2a392b6d46dbd6bccff5b8ce427bb63e6",
         intel: "c2fd93101e354b9e7d4ae5e1b4ae605850defcfada6efd5940427a9b468d4b0d"

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
