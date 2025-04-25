class DeeplCli < Formula
  version "v0.4.4"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.4.tar.gz"
  sha256 "fa69be32383ccd480f7eef292e131d145cbd4f4883a60ebc514a491e85d3c4d6"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
