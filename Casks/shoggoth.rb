cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.9.6"
  sha256 arm:   "47251444583df86975aa3362795084f0ba0d2bb5d6f1ca2fd25b5a0d73b1d5fa",
         intel: "4ee2c2ca261960146f4f82e140bae24db1ca9a7b1894933ee204f2b7913443a8"

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
