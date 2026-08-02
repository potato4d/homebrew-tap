cask "winzig" do
  version "0.2.0"
  sha256 "e61e0544a05fd46d7993c1ef05c8b5f947a2bbf84fbb9fe0b1abf10d76fca877"

  url "https://github.com/potato4d/winzig/releases/download/v#{version}/Winzig-#{version}-arm64.dmg"
  name "Winzig"
  desc "Small desktop text editor built with Electron and TypeScript"
  homepage "https://github.com/potato4d/winzig"

  depends_on macos: :monterey
  depends_on arch: :arm64

  app "Winzig.app"

  caveats <<~EOS
    Winzig is not signed with a Developer ID or notarized.
    If macOS blocks the first launch, open Applications in Finder,
    Control-click Winzig, choose Open, then confirm.
  EOS
end
