cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.8.7"
  sha256 arm:   "b7f126a1e94551fbde46f0564e1c9a820012322402f406baaf94d3f0921e1deb",
         intel: "c069c842dc127d1ee26522d144fb722f54ab632cc85e555392ec5daa49b71817"

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
