class DeeplCli < Formula
  version "v0.2.6"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "0dae7fd78113123b57105c3cfa5e07f182dfa934b7034eb16ebeb3856271d4a2"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
