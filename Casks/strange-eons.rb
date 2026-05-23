cask "strange-eons" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.0"
  sha256 arm:   "d30ceba0995341f590abdd5e0be5eaea22871df0d1642a7cbed61f04b32541b9",
         intel: "694a354572b33a905643538a0c8c98eebceab3000368362613cdfc4eb9448bca"

  url "https://github.com/christophercurrie/strange-eons/releases/download/v#{version}/strange-eons-#{version}-macos-#{arch}.dmg",
      verified: "github.com/christophercurrie/strange-eons/"
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
