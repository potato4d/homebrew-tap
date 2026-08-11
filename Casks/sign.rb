cask "sign" do
  version "0.3.3"
  sha256 "877933173668ff8e12443b593721637efc601c34a7d532c4115817b22d39ec87"

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
