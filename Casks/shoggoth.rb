cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.8.0"
  sha256 arm:   "f5a4839595ecfc9ecb9f9447d61d7966b93fff509eba9961f4114529c0f629fb",
         intel: "8540e1053da21a652f6c932f48daa80bfd4feef3a831895e663c3f321de67201"

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
