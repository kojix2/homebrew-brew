class DeeplCli < Formula
  version "v0.4.9"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.9.tar.gz"
  sha256 "bcb3b1b22cd07ed20ce4d4afa9a11f996d49b3d14350e134efa7b3d6d4e14c94"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
