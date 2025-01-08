class Gpscan < Formula
  version "v0.0.8"
  desc "Generate GrandPerspective-compatible XML files"
  homepage "https://github.com/kojix2/gpscan"

  on_macos do
    url "https://github.com/kojix2/gpscan/releases/download/v0.0.8/gpscan-universal-apple-darwin.tar.gz"
    sha256 "ff98c15d190a9d081bfcad0305b49313a7de4508534c596a78533e99e3fcd810"
  end

  on_linux do
    url "https://github.com/kojix2/gpscan/releases/download/v0.0.8/gpscan-x86_64-unknown-linux-musl.tar.gz"
    sha256 "67dfcd22cdcbd20c6bdc34ddafe1fe8613446a810f5df2294412a41f76ac5b13"
  end

  license "MIT"

  def install
    bin.install "gpscan"
  end
end
