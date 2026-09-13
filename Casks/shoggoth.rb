cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.10.2"
  sha256 arm:   "3129365f9269c07985463685207b8290352aea3f4dd12e564611d59b37815513",
         intel: "060c73ff81f8321590dbd1716b02838157bcfc0693f81682b830001b4fb9eadb"

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
