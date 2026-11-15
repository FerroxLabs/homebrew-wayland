cask "wayland" do
  arch arm: "arm64", intel: "x64"

  version "0.13.2"
  sha256 arm:   "d26106a6af6bd6c945676ef4c3f3a08d102dab468e3caf634c13fe1d8329d188",
         intel: "cd4991f41b67c27d7eb48d10032626cc0bf4deb2779d43065d584fae2d8553fb"

  url "https://github.com/FerroxLabs/wayland/releases/download/v#{version}/Wayland-#{version}-mac-#{arch}.dmg"
  name "Wayland"
  desc "Local-first desktop AI agent that drives every AI CLI on your machine"
  homepage "https://github.com/FerroxLabs/wayland"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Wayland.app"

  zap trash: [
    "~/Library/Application Support/Wayland",
    "~/Library/Preferences/com.ferroxlabs.wayland.plist",
    "~/Library/Saved Application State/com.ferroxlabs.wayland.savedState",
  ]
end
