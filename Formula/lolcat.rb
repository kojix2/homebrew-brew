class Lolcat < Formula
  version "v0.0.8"
  desc "Crystal implementation of the lolcat "
  homepage "https://github.com/kojix2/lolcat.cr"
  url "https://github.com/kojix2/lolcat.cr/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "b4cd8c87a74d1a85af75672ea6c2ca1eba777f2230f9348b5d5147fd74708cf2"
  license "BSD-3-Clause"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/lolcat"
  end
end
