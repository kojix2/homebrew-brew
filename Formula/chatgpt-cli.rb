class ChatgptCli < Formula
  version "v0.6.1"
  desc "Simple command line tool for ChatGPT"
  homepage "https://github.com/kojix2/chatgpt-cli"
  url "https://github.com/kojix2/chatgpt-cli.git",
      tag: "v0.6.1",
      revision: "a631f97689ed6ad78de847a8f7a24a168b722ee3"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"
  depends_on "bat"

  def install
    system "make build release=1"
    bin.install "bin/chatgpt"
  end
end
