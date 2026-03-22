class DeeplCli < Formula
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "bc81fbc3bae63a540455fc5b5c25e5620949a5bf46efbab842708c2fb56d7ac9"
  license "MIT"

  depends_on "crystal" => :build
  depends_on "openssl@3"

  def install
    system "shards", "build", "--release"
    bin.install "bin/deepl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deepl --version")
  end
end
