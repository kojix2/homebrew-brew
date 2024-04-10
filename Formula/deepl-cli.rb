class DeeplCli < Formula
  version "v0.3.4"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "515397f609ef9f621b64da01fc7362b15332c9ad7673179b97733b43a99a5dc3"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
