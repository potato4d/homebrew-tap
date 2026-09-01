cask "sign" do
  version "0.3.8"
  sha256 "a0acbc4c91237d64a9c289f218e27908689eec8edc9cf13e0ec85b68c5de5c4c"

  url "https://github.com/potato4d/sign/releases/download/v#{version}/sign-#{version}-arm64.dmg"
  name "sign"
  desc "Small desktop text editor built with Electron and TypeScript"
  homepage "https://github.com/potato4d/sign"

  depends_on macos: :monterey
  depends_on arch: :arm64

  app "sign.app"

  caveats <<~EOS
    sign is not signed with a Developer ID or notarized.
    If macOS blocks the first launch, open Applications in Finder,
    Control-click sign, choose Open, then confirm.
  EOS
end
