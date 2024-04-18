class DeeplCli < Formula
  version "v0.3.5"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.3.5.tar.gz"
  sha256 "1ead37f41549019b54bdf7130576001ca1a49eb0c1c6d4e53bc4f8bb39909fc1"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
