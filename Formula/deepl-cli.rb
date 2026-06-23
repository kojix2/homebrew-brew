class DeeplCli < Formula
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "6e891ad83cf24abb6cd977118f86379fd1af9aebc5c892c7fcef8f9ac79d6f4f"
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
