class DeeplCli < Formula
  version "v0.3.1"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "b9d168848023195c475c15d09d1d43a5512281a5d22ec3893a0f9dc31b8915b5"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
