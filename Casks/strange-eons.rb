cask "strange-eons" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.2-beta1"
  sha256 arm:   "86b727a434c4ead78e2806e2a5555f0e04f74ae263f29df1b4f73f6286333a9d",
         intel: "a13d5386bce0faa5be90aa04fcad1103566e6782740afe22d68fa7888c801652"

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
