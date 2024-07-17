class DeeplCli < Formula
  version "v0.4.0"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "483d30341a80914dfe231a58819c9adc5c8f6d867b71eb45e9c39b6950bc8380"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
