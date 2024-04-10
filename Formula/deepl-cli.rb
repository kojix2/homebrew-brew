class DeeplCli < Formula
  version "v0.3.3"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "5b28a8802e9c6a4269f34321cd658444ae36c2db466725f66fab5312e9c93253"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
