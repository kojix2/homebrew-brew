class ChatgptCli < Formula
  version "v0.4.3"
  desc "Simple command line tool for ChatGPT"
  homepage "https://github.com/kojix2/chatgpt-cli"
  url "https://github.com/kojix2/chatgpt-cli/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "4eb0375b2407ec2ae01e15e260f526a052a1f89e57fedba0b419f3118b917489"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"
  depends_on "bat"

  def install
    system "make build release=1"
    bin.install "bin/chatgpt"
  end
end
