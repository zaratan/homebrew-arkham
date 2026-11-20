cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.11.6"
  sha256 arm:   "d8bfdf1c2c6d18e7373d6b3af9ea2f25a4bf9b14474cdd1f10806270bda473c3",
         intel: "ed17bc8dec27f50dbce953f565b6a87110687b49376a2046d8be825089e1927b"

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
