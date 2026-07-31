cask "winzig" do
  version "0.1.0"
  sha256 "5ed41df49bcc0035609b38e19643d5a6c92468fea1f52ec5a7e659e430bdd53e"

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
