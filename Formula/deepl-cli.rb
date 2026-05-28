class DeeplCli < Formula
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.5.4.tar.gz"
  sha256 "abfc0268a34cb5e8e24ee2986b7b608336b4ae0e34b1818c4d85679d181b66d6"
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
