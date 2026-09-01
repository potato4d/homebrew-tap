cask "sign" do
  version "0.3.5"
  sha256 "3942d16f53259f95a063de326e7ede26aa8ca989b2c1480157cc2a1c8fea99d2"

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
