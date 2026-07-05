cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.7.5"
  sha256 arm:   "1e854d904d73cea45a4f0c273f2ff97f819f8eea90784fbe1875c2e73c11971b",
         intel: "c0c502162ca3f4be6417fbfb0680133c84e18c4715bef8a6caa51d5900e819cc"

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
