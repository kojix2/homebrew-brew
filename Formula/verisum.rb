class Verisum < Formula
  version "v0.1.8"
  desc "A more comfortable checksum"
  homepage "https://github.com/kojix2/verisum"
  url "https://github.com/kojix2/verisum/archive/tags/v0.1.8.tar.gz"
  sha256 "f4f2ff7bf98dace7efceeb2dbdee8560ad3459677bcf1b30300aab07028125cb"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/verisum"
  end
end
