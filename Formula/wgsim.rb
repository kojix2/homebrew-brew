class Wgsim < Formula
  version "v0.0.7.alpha"
  desc "Reimplement wgsim in Crystal and add extra features."
  homepage "https://github.com/kojix2/wgsim"
  url "https://github.com/kojix2/wgsim.cr/archive/refs/tags/v0.0.7.alpha.tar.gz"
  sha256 "5def687443fb46490db096f42f86ca78b9830fff3cb9e9363989a59700b769b1"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards build --release"
    # system "shards build --release -Dpreview_m"
    bin.install "bin/wgsim"
  end
end
