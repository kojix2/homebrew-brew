class DeeplCli < Formula
  version "v0.4.8"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.8.tar.gz"
  sha256 "60d9aee78f78ab9fb6823418df55ee0e90fe97839473e3f4db707c40aefc9b33"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
