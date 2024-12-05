class Checksum < Formula
  version "v0.1.5"
  desc "A more comfortable checksum"
  homepage "https://github.com/kojix2/checksum.cr"
  url "https://github.com/kojix2/checksum.cr/archive/tags/v0.1.5.tar.gz"
  sha256 "efaac35697e5f62bc978d4b27aba1eb5a92a6aaf0070d65e3f3f77245e22ec6c"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/checksum"
  end
end
