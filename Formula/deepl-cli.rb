class DeeplCli < Formula
  version "v0.5.0"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "851d5c0272c5123071d5b3cb244e5867a247440c06cd47105559f468fd8ad6d4"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
