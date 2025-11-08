class DeeplCli < Formula
  version "v0.4.12"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.12.tar.gz"
  sha256 "d1341d8cef575bb182f18bf18850d35d59fe258ce896e6702d22ae25c82a19fa"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
