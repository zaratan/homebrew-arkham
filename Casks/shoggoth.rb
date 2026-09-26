cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.5"
  sha256 arm:   "a91dcc28a5cf22961a1dbbc07a13b3c66902eb1f77b3d2e0ba35f1ab7ff4a980",
         intel: "bb62cece10a0c7cbeb205c01a69dbb864f11ef31d7d26c39f290d0bd008d99d4"

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
