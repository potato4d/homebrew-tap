cask "winzig" do
  version "0.3.0"
  sha256 "08f1fe97ce7e47aeddfd8c4c1c0b535cfef7e307907220d452bdd410e3fade4b"

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
