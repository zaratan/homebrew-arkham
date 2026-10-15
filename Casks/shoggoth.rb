cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.13"
  sha256 arm:   "c591d7740b5483f8f6b75d34c01c232d2359c0714f95e9c439f102a776d84bcf",
         intel: "8acb284d5c8bf51e833316f370742e7691f3c99ce6bb62d9b25ca2eea521c92a"

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
