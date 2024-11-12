class Gpscan < Formula
  version "v0.0.7"
  desc "Generate GrandPerspective-compatible XML files"
  homepage "https://github.com/kojix2/gpscan"

  on_macos do
    url "https://github.com/kojix2/gpscan/releases/download/v0.0.7/gpscan-universal-apple-darwin.tar.gz"
    sha256 "e2f1e42d6e300e9c48ec45a2afccdd4588a8adf2c5cfd255eacbfdafbf744f55"
  end

  on_linux do
    url "https://github.com/kojix2/gpscan/releases/download/v0.0.7/gpscan-x86_64-unknown-linux-musl.tar.gz"
    sha256 "dd56c0eb0a1317d16be8be5f3a3ba24f6041ae60c4bc13196d494d64195f74ea"
  end

  license "MIT"

  def install
    bin.install "gpscan"
  end
end
