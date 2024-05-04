class Sdust < Formula
  version "v0.1.4.alpha"
  desc "Reimplement sdust in Crystal"
  homepage "https://github.com/kojix2/sdust"
  url "https://github.com/kojix2/sdust.cr/archive/refs/tags/v0.1.4.alpha.tar.gz"
  sha256 "de64cb0edf8608a365c52d6230ed7d1906b9fff270880e01c47a7e84ec4c85da"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release -Dpreview_mt"
    bin.install "bin/sdust"
  end
end
