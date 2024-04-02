class ChatgptCli < Formula
  version "v0.4.3"
  desc "Simple command line tool for ChatGPT"
  homepage "https://github.com/kojix2/chatgpt-cli"
  url "https://github.com/kojix2/chatgpt-cli.git",
      tag: "v0.4.3",
      revision: "e6bd7635e75322c217388c46aec2b1073869cac0"
  license "MIT"

  depends_on "crystal"
  depends_on "cmake" # kostya/lexbor
  depends_on "readline"
  depends_on "bat"

  def install
    system "make build release=1"
    bin.install "bin/chatgpt"
  end
end
