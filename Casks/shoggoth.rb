cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.7.8"
  sha256 arm:   "643eff831440def489d501cb5fe7da663bdd1787676db219d9826039e4ba899e",
         intel: "f0fe77c5fa9cacaa888d28b335a75af424a79b7b4daca1feca04636ae272bb0f"

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
