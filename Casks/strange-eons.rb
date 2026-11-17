cask "strange-eons" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.3"
  sha256 arm:   "f6c9a59d5ff666e166f05be33b33c2d796ce4f1d754e10bda0b048c49bcd84bd",
         intel: "3a0900e5d73fb6effb2da1fb182a97bee2d8844278d7739bd56eaf894bc94dcb"

  url "https://github.com/strange-eons/strange-eons/releases/download/v#{version}/strange-eons-#{version}-macos-#{arch}.dmg",
      verified: "github.com/strange-eons/strange-eons/"
  name "Strange Eons"
  desc "Design tool for paper-based games (Arkham Horror LCG, etc.)"
  homepage "https://strangeeons.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-](?:alpha|beta|rc)\d*)?)$/i)
    strategy :github_releases do |json, regex|
      json.filter_map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next unless match

        match[1]
      end
    end
  end

  depends_on :macos

  app "Strange Eons.app"

  zap trash: [
    "~/Library/Application Support/Strange Eons",
    "~/Library/Caches/ca.cgjennings.strange-eons",
    "~/Library/Preferences/ca.cgjennings.strange-eons.plist",
    "~/Library/Saved Application State/ca.cgjennings.strange-eons.savedState",
  ]
end
