cask "marina-ui" do
  version "0.5.1"
  sha256 "4cb0ffda353cc8fe31f12f42e02d56787913b4eba9d60575d040cf7691c05059"

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
