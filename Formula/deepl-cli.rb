class DeeplCli < Formula
  version "v0.4.2"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "e108a1b622048c2167e801d82a34b804dbee8bd092e5fa8a8f8bc499c2271290"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
