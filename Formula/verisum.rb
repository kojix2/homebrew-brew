class Verisum < Formula
  desc "A more comfortable checksum"
  homepage "https://github.com/kojix2/verisum"
  url "https://github.com/kojix2/verisum/archive/tags/v0.2.0.tar.gz"
  sha256 "e8e1bb5cb5167f651f4eb447e1781c925e4b64efbfe3e88e866843a0eca3fada"
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
