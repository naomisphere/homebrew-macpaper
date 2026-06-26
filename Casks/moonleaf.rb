cask "moonleaf" do
  version "4.0.0"
  sha256 "40c2bbdb894dd65d75d0f2b15dc171a0dbf4cc0870d83e1189e677e7c5578093"

  url "https://github.com/parkuoa/moonleaf/releases/download/v#{version}/moonleaf.dmg"
  name "moonleaf"
  desc "✨ The Wallpaper Manager for macOS"
  homepage "https://github.com/parkuoa/moonleaf"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "moonleaf.app"
  auto_updates true
  depends_on macos: ">= :monterey"

  zap trash: [
    "~/Library/Application Support/moonleaf/",
    "~/.local/share/macpaper/",
    "~/.local/share/paper/",
    "~/.config/moonleaf/",
  ]
end
