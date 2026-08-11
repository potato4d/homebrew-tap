cask "sign" do
  version "0.3.4"
  sha256 "70a451f508eb5cf6043982f1ee302dbd1070180b9569c38507275f84bf5930d4"

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
