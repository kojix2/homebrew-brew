class DeeplCli < Formula
  version "v0.4.6"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.6.tar.gz"
  sha256 "2aef8fdcb531a8424ed1bb7465cd114e71b142d505792b30a646e3f8250f30fc"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
