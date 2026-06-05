cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.6.1"
  sha256 arm:   "531d1997090466fac512240bb72a57de57a1f61abc54911a88afbc9398699e40",
         intel: "7194c974c7135957076db4328af8f957d1d45be5bdef27d662d712ce46a48f52"

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
