cask "strange-eons" do
  arch arm: "aarch64", intel: "x64"

  version "3.5.4-alpha1"
  sha256 arm:   "000e81148218786d36a5f513bf4642b656b4c1b9be40c2d8d8914f2c811cba8f",
         intel: "4b66f2079fd9486278273ead5ccad54b2dd68ffa3314a7cea2ec6a37fccf7e55"

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
