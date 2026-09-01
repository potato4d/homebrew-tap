cask "sign" do
  version "0.3.7"
  sha256 "11602ba58ac47799ff7eb5b4db0713a224ede8312fd9125a9584029ff33379ac"

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
