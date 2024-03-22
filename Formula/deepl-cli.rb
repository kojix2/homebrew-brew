class DeeplCli < Formula
  version "v0.2.5"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "3ea63f615eecc5234c8d449be7fb41f9f6ebe72f36b8d231ed9756b7a22386ef"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
