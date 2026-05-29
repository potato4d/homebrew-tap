# typed: false
# frozen_string_literal: true

class TranslateCli < Formula
  desc "Translate text through local Agent CLIs"
  homepage "https://github.com/potato4d/translate-cli"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.5/t-darwin-amd64.tar.gz"
      sha256 "bbe23f9ad514763d77591b4abcf9577ba0a9b6636df5253f53c299888b229fbb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.5/t-darwin-arm64.tar.gz"
      sha256 "0febf0a1b662bb045332ef1d189976e6f03962cdf8d45e6c272ac233b6195ac2"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.5/t-linux-amd64.tar.gz"
      sha256 "aefa76a15fecf318630cf60c8b73c15423bb1126ddcc15c50cac172ac2c2e853"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.5/t-linux-arm64.tar.gz"
      sha256 "7ff96e29a4f4e251df19820c6b8060a179dc4c3eee78de7243e0b388ec1fa094"
    end
  end

  def install
    bin.install "t"
  end

  test do
    system "#{bin}/t", "--version"
  end
end
