class ChatgptCli < Formula
  version "v0.5.0"
  desc "Simple command line tool for ChatGPT"
  homepage "https://github.com/kojix2/chatgpt-cli"
  url "https://github.com/kojix2/chatgpt-cli.git",
      tag: "v0.5.0",
      revision: "3732553513ebe14d0113549f6d0449fd866cf30c"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"
  depends_on "bat"

  def install
    system "make build release=1"
    bin.install "bin/chatgpt"
  end
end
