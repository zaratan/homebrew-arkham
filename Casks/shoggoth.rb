cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.9.4"
  sha256 arm:   "cc8b78113ca2330fc38772147153178728be49acc9ec7306b3af9d278bc361f6",
         intel: "c5bffda4c1d685989bc095538a3635fe042931b8401f2c6ecc84ff24d8e94318"

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
