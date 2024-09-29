class DeeplCli < Formula
  version "v0.4.1"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "587fd4a539de81d788091b04d10710e66d94bd2a5d85e48852d1236e9d0f44f2"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
