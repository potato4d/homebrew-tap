# typed: false
# frozen_string_literal: true

class TranslateCli < Formula
  desc "Translate text through local Agent CLIs"
  homepage "https://github.com/potato4d/translate-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.2/t-darwin-amd64.tar.gz"
      sha256 "48ddb54c8a4c39b243dd04a1787e14cd052ba60ff1c85343fae5036d7028e3f1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.2/t-darwin-arm64.tar.gz"
      sha256 "d9f8002bdc3abee7da3d310da6f1ea110cffd17a566ec6717d4af0e6639b5c9b"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.2/t-linux-amd64.tar.gz"
      sha256 "8f52cc9b3dfe31aa0dffbbdab277e80c1394fe2797176a9f0f379e9613297a59"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.2/t-linux-arm64.tar.gz"
      sha256 "9aa81816edf9651fbc995ef4871b5b93a8d63a7c5500d9a9816020c29fd8e0b9"
    end
  end

  def install
    bin.install "t"
  end

  test do
    system "#{bin}/t", "--version"
  end
end
