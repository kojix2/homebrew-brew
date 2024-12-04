class Lolcat < Formula
  version "v0.0.6"
  desc "Crystal implementation of the lolcat "
  homepage "https://github.com/kojix2/lolcat.cr"
  url "https://github.com/kojix2/lolcat.cr/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "30db64c581f51478a1da8a8cdca3d339ca5be27f46c8277f168eb7042b1cd962"
  license "BSD-3-Clause"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/lolcat"
  end
end
