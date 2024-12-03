class Lolcat < Formula
  version "v0.0.5"
  desc "Crystal implementation of the lolcat "
  homepage "https://github.com/kojix2/lolcat.cr"
  url "https://github.com/kojix2/lolcat.cr/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "6896dd30a6d9e1f7b909f11ca8fb9fc003d10c9974d21cfe5c6d48b8b2da1b33"
  license "BSD-3-Clause"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/lolcat"
  end
end
