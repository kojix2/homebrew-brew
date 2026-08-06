class Verisum < Formula
  desc "A more comfortable checksum"
  homepage "https://github.com/kojix2/verisum"
  url "https://github.com/kojix2/verisum/archive/tags/v0.2.2.tar.gz"
  sha256 "d362d5317f21c6f2ec9e519fb18bb58f89912f51d4eb62b98613e675327e2967"
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
