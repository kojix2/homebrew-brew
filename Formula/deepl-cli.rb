class DeeplCli < Formula
  version "v0.4.3"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "91a363fb05f52274030482542430cc54de50cf77f55c40c05586c8402d25078b"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
