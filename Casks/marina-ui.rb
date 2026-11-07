cask "marina-ui" do
  version "0.5.0"
  sha256 "7bb4f58e371e8ab38a252e53e9f099634aad5f3e6c78bb4ebb7c526e25ee1746"

  url "https://github.com/bcollard/marina-ui/releases/download/v#{version}/MarinaUI.dmg"
  name "Marina"
  desc "macOS companion app for the marina CLI and the kind clusters it manages"
  homepage "https://github.com/bcollard/marina-ui"

  depends_on macos: :sonoma

  app "MarinaUI.app"

  zap trash: [
    "~/Library/Preferences/dev.bcollard.MarinaUI.plist",
  ]
end
