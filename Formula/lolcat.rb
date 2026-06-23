class Lolcat < Formula
  desc "Crystal implementation of the lolcat "
  homepage "https://github.com/kojix2/lolcat.cr"
  url "https://github.com/kojix2/lolcat.cr/archive/refs/tags/v0.0.12.tar.gz"
  sha256 "3fb9acceaede7f6738ae8217e576f8e0da57aac80debfeb7772a16ebbf77a189"
  license "BSD-3-Clause"

  depends_on "crystal" => :build
  depends_on "pcre2"

  def install
    system "shards build --release"
    bin.install "bin/lolcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lolcat --version")
  end
end
