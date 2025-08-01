class DeeplCli < Formula
  version "v0.4.10"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.10.tar.gz"
  sha256 "c38b5b789b0b71984c50a75258e53b0fd9936e96a9bdeb05a6b3e2266335cdd2"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
