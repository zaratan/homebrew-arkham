cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.11.3"
  sha256 arm:   "4054ec8800b39c121766c2dd1893e9271fc0e7c70dd285d71848721672955a21",
         intel: "a1b8f4836538b156ee88149ae3405fbe57cbf35f48a32ec250f860ddbff6a1e6"

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
