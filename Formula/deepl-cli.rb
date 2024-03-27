class DeeplCli < Formula
  version "v0.2.6"
  desc "Simple command line tool for DeepL"
  homepage "https://github.com/kojix2/deepl-cli"
  url "https://github.com/kojix2/deepl-cli/archive/refs/tags/v0.3.0.beta2.tar.gz"
  sha256 "cd365150efd1e5eafd32c12653dde6f79e6a54f5f7d2b6a0bea6b93f90542f7f"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    bin.install "bin/deepl"
  end
end
