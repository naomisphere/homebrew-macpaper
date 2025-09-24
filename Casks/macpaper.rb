cask "macpaper" do
  version "2.1.1"
  sha256 "3f1387ccbc31e40a7cfaf61cd3b0e53645db2c15700516027e1f7c4f4596350a"

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
