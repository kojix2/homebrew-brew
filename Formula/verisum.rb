class Verisum < Formula
  version "v0.1.7"
  desc "A more comfortable checksum"
  homepage "https://github.com/kojix2/verisum"
  url "https://github.com/kojix2/verisum/archive/tags/v0.1.7.tar.gz"
  sha256 "3cb346a73181d213ed85fcdb795546132ca4fda3c147eeb4fc4df48a021f3008"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/verisum"
  end
end
