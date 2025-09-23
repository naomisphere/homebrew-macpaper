cask "macpaper" do
  version "2.1.0"
  sha256 "adf7e260a33ecd5dfa28b2c2b890cad65b9f5a5a9a9e4183286266944b1ab81d"

  url "https://github.com/naomisphere/macpaper/releases/download/v#{version}/macpaper.dmg"
  name "macpaper"
  desc "✨ The Wallpaper Manager for macOS"
  homepage "https://github.com/naomisphere/macpaper"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "macpaper.app"
  auto_updates true
  depends_on macos: ">= :monterey"

  zap trash: [
    "~/Library/Application Support/macpaper/",
    "~/.local/share/macpaper/",
    "~/.local/share/paper/",
  ]
end