class DeeplCli < Formula
  version "v0.3.2"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "1c80cb92ec7c711d1ab764d44df9bc0a1064cfdbce91e7dde6b5469513928d74"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
