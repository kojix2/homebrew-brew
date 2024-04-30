class Wgsim < Formula
  version "v0.0.2.alpha"
  desc "Reimplement wgsim in Crystal and add extra features."
  homepage "https://github.com/kojix2/wgsim"
  url "https://github.com/kojix2/wgsim.cr/archive/refs/tags/v0.0.2.alpha.tar.gz"
  sha256 "f85601b276700d8b3c3d5208b2cb53e4f486338ad119874e411d13a8ee09381e"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    # system "shards build --release -Dpreview_mt"
    bin.install "bin/wgsim"
  end
end
