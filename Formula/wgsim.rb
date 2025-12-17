class Wgsim < Formula
  version "v0.0.9.alpha"
  desc "Reimplement wgsim in Crystal and add extra features."
  homepage "https://github.com/kojix2/wgsim"
  url "https://github.com/kojix2/wgsim.cr/archive/refs/tags/v0.0.9.alpha.tar.gz"
  sha256 "03b1876bae4fbc646557a7838f7adb6e53fe1cac29f6433521ec7aa8be851db0"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    # system "shards build --release -Dpreview_m"
    bin.install "bin/wgsim"
  end
end
