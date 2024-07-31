class Checksum < Formula
  version "v0.1.4"
  desc "A more comfortable checksum"
  homepage "https://github.com/kojix2/checksum.cr"
  url "https://github.com/kojix2/checksum.cr/archive/tags/v0.1.4.tar.gz"
  sha256 "5d8e073f82fcae58c845b5e62942e962faf0a69d5981360e98944cd2db59a0d9"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/checksum"
  end
end
