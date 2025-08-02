class DeeplCli < Formula
  version "v0.4.11"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.11.tar.gz"
  sha256 "15b6d9656f4fc08d03f4cbbdab427e0786db1216d9d3f3bf90068daa43e88b5d"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
