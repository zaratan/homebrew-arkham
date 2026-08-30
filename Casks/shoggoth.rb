cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.9.5"
  sha256 arm:   "6fe68d8b114fa61068f0449514fe086f4d2985cc108037054c6727171b66ab25",
         intel: "93dafc1356f3249f80b3e3e9b80c5c805fef5399e1dfd767a8a72d6d16aac9b5"

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
