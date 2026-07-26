cask "shoggoth" do
  arch arm: "mac", intel: "mac-intel"

  version "0.8.8"
  sha256 arm:   "a11ec018e80fe4a738fc56662e124424a0796da228a9699616df5c420103f0e1",
         intel: "c6c75e94978281de5ae3317355b3cb2a2dacef04d338d8fe6c0fd1e56fcefb7c"

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
