class Verisum < Formula
  desc "A more comfortable checksum"
  homepage "https://github.com/kojix2/verisum"
  url "https://github.com/kojix2/verisum/archive/tags/v0.2.1.tar.gz"
  sha256 "6693e3192606e4e9340d40e3a1570639ebf527f9dcc027dcb1a8a9deef94c13c"
  license "MIT"

  depends_on "crystal" => :build
  depends_on "openssl@3"
  depends_on "pcre2"

  def install
    system "shards build --release"
    bin.install "bin/verisum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verisum --version")
  end
end
