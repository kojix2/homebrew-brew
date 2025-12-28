class Lolcat < Formula
  version "v0.0.10"
  desc "Crystal implementation of the lolcat "
  homepage "https://github.com/kojix2/lolcat.cr"
  url "https://github.com/kojix2/lolcat.cr/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "16589dcec451b8d1849c869adf85f1c910ea76f09b7beb1878ff218a7cbf7bb0"
  license "BSD-3-Clause"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/lolcat"
  end
end
