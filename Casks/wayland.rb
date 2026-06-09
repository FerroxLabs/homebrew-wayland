cask "wayland" do
  arch arm: "arm64", intel: "x64"

  version "0.9.6-rc.2"
  sha256 arm:   "d08ff391769d2818ee803b5033fad5f74b26f5c1f976ae61e006b304c4fd1fff",
         intel: "f10693b694ac63b45c22a544c807141a54476de12846aa0c90a36a1bb5e27f5a"

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
