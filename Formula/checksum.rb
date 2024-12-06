class Checksum < Formula
  version "v0.1.5"
  desc "A more comfortable checksum"
  homepage "https://github.com/kojix2/checksum.cr"
  url "https://github.com/kojix2/checksum.cr/archive/tags/v0.1.5.tar.gz"
  sha256 "85bd50d541b4d9944c1e18f8d43855696f3d299a1f791477a9d043924d2517ae"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/checksum"
  end
end
