class DeeplCli < Formula
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "c74a50635c8175910bc58587e691758c36e91047f6cb240e44441e72f89feabd"
  license "MIT"

  depends_on "crystal" => :build
  depends_on "openssl@3"
  depends_on "pcre2"
  
  def install
    system "shards", "build", "--release", "-Dclipboard"
    bin.install "bin/deepl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deepl --version")
  end
end
