class ChatgptCli < Formula
  version "v0.4.4"
  desc "Simple command line tool for ChatGPT"
  homepage "https://github.com/kojix2/chatgpt-cli"
  url "https://github.com/kojix2/chatgpt-cli.git",
      tag: "v0.4.4",
      revision: "80c2dd9fc20766c702a003aae1522843363c70be"
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
