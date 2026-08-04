cask "winzig" do
  version "0.3.1"
  sha256 "dc51fbcab9ff6fabe299d79e7ff360bf18d5f0a1a03e90f71084abcb79c18380"

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
