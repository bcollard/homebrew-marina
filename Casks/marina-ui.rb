cask "marina-ui" do
  version "0.3.1"
  sha256 "afb6d131c3aa146e0616b0e8653a4ecbb18dfc2920fe20ca886bdfa8ed4e72db"

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
