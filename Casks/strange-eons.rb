cask "strange-eons" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.2"
  sha256 arm:   "d6177c5adfae2fe9e465e58adc81e20d860dccf0ffd240f667288da20d3ac689",
         intel: "606dc1ada139021a30eeac770dcde148fc73b19904dfd448f37e913e42099385"

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
