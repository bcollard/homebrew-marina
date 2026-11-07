cask "marina-ui" do
  version "0.4.0"
  sha256 "6678d96c857df4e6eb213014c6383078929a84e6a379ba82d537b2890c432665"

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
