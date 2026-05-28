# typed: false
# frozen_string_literal: true

class TranslateCli < Formula
  desc "Translate text through local Agent CLIs"
  homepage "https://github.com/potato4d/translate-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.4/t-darwin-amd64.tar.gz"
      sha256 "5789b9f7417833d59c5c1dfb2393b0bf9e776c939d3f4fed4f940810defffb56"
    end
    if Hardware::CPU.arm?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.4/t-darwin-arm64.tar.gz"
      sha256 "7fbb75dc2967aa96717b20a54591143bfe75437413de35d6b7fee28d2342165f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.4/t-linux-amd64.tar.gz"
      sha256 "fc3760050b199737b4df7981e0121827c86a3280fa746f85b8ea40bd2e3a2132"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.4/t-linux-arm64.tar.gz"
      sha256 "ec4762623ff299d9f99ff13c6d571205148785e71cfaabb815eeaff863eeeb69"
    end
  end

  def install
    bin.install "t"
  end

  test do
    system "#{bin}/t", "--version"
  end
end
