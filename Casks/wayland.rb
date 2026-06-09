cask "wayland" do
  arch arm: "arm64", intel: "x64"

  version "0.9.6-rc.2.1"
  sha256 arm:   "affaab9363042804a142d4c4567fa9823c5a27d34233071875c4715bfc858d82",
         intel: "9f3667daf3a6dbcddc0ae457c8141f75894812d8b25e4d7ab1db6266132a99d8"

  url "https://github.com/FerroxLabs/wayland/releases/download/v#{version}/Wayland-#{version}-mac-#{arch}.dmg"
  name "Wayland"
  desc "Local-first desktop AI agent that drives every AI CLI on your machine"
  homepage "https://github.com/FerroxLabs/wayland"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Wayland.app"

  zap trash: [
    "~/Library/Application Support/Wayland",
    "~/Library/Preferences/com.ferroxlabs.wayland.plist",
    "~/Library/Saved Application State/com.ferroxlabs.wayland.savedState",
  ]
end
