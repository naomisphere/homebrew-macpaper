cask "moonleaf" do
  version "3.1.0"
  sha256 "b62ace178795f47b178578fb6e952afcfec7f3687c760f1e234877486ec3ba3b"

  url "https://github.com/naomisphere/moonleaf/releases/download/v#{version}/moonleaf.dmg"
  name "moonleaf"
  desc "✨ The Wallpaper Manager for macOS"
  homepage "https://github.com/naomisphere/moonleaf"

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
