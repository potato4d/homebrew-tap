# typed: false
# frozen_string_literal: true

class TranslateCli < Formula
  desc "Translate text through local Agent CLIs"
  homepage "https://github.com/potato4d/translate-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.3/t-darwin-amd64.tar.gz"
      sha256 "b69d82d921dfd237ca967bae880fee6a82c3c53fc1363a023c8dc848241e194b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.3/t-darwin-arm64.tar.gz"
      sha256 "ff817550ac22016092e50bc2a047d6168a883f6e0befdf019800229060dc62d0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.3/t-linux-amd64.tar.gz"
      sha256 "28fb86d6cfa2a3a17786c10ef6db376c7a18d8831789fa5f37b12d884e60bc16"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/potato4d/homebrew-tap/releases/download/translate-cli-v0.1.3/t-linux-arm64.tar.gz"
      sha256 "55ad5644916ca468b3c7cf7de1218e549f42c204723553f43adc37d061f7e042"
    end
  end

  def install
    bin.install "t"
  end

  test do
    system "#{bin}/t", "--version"
  end
end
