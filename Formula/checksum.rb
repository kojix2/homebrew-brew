class Checksum < Formula
  version "v0.1.3"
  desc "A more comfortable checksum"
  homepage "https://github.com/kojix2/checksum.cr"
  url "https://github.com/kojix2/checksum.cr/archive/tags/v0.1.3.tar.gz"
  sha256 "670f27559b93b55a385ea5e58e547dae7e5d8504e5c8b5274b3f32e1d527fad0"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/checksum"
  end
end
