class DeeplCli < Formula
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.5.3.tar.gz"
  sha256 "243bf143aa1fb8072f93b45eb13d32e44201959f42cc8bc17d5181798b7d97a9"
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
