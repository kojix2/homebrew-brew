class DeeplCli < Formula
  version "v0.4.5"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.5.tar.gz"
  sha256 "386a38b2ae88a232fa71084795eda724c03a8a6e15b171f5c824ff4909ec70b3"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
