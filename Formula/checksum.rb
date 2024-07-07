class Checksum < Formula
  version "v0.1.2"
  desc "A more comfortable checksum"
  homepage "https://github.com/kojix2/checksum.cr"
  url "https://github.com/kojix2/checksum.cr/archive/tags/v0.1.2.tar.gz"
  sha256 "9d003504339bd291b6fa49b0bd05c9642715d9aff0ba598cc235b70ef5195d42"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/checksum"
  end
end
