class DeeplCli < Formula
  version "v0.3.0"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "3d73e18a8157d9e715ba12eabb231ef26de9ad1f51bd4a750d6012e736920df0"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
