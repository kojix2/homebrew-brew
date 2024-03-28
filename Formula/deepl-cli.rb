class DeeplCli < Formula
  version "v0.3.0.beta3"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.3.0.beta3.tar.gz"
  sha256 "3484258eb2aa80d34243b6e11e14cb4450d6c88227fdf5f6cf81df8dbdee4a13"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
