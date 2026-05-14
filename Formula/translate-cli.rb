# typed: false
# frozen_string_literal: true

class TranslateCli < Formula
  desc "Translate text through local Agent CLIs"
  homepage "https://github.com/potato4d/translate-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/potato4d/translate-cli/releases/download/v0.1.0/t-darwin-amd64.tar.gz"
      sha256 "541fa4234c816dcc2b4451561a19dc68705829a4e2d32df2d102b8b47d7d1226"
    end
    if Hardware::CPU.arm?
      url "https://github.com/potato4d/translate-cli/releases/download/v0.1.0/t-darwin-arm64.tar.gz"
      sha256 "e2a7e98afc25dc0b2dbfb9c77918392cee7f45595afbdcc5112025752180b270"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/potato4d/translate-cli/releases/download/v0.1.0/t-linux-amd64.tar.gz"
      sha256 "c498de381bddfa4ba11e0c5ef45982d495f6a3e1c1a82993f7b0f694b9792bcd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/potato4d/translate-cli/releases/download/v0.1.0/t-linux-arm64.tar.gz"
      sha256 "f9aa75054731d61ce92c4c50b672d74e28cab6e3d48e204d4360f31b68038809"
    end
  end

  def install
    bin.install "t"
  end

  test do
    system "#{bin}/t", "--version"
  end
end
