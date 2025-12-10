class ChatgptCli < Formula
  version "v0.6.1"
  desc "Simple command line tool for ChatGPT"
  homepage "https://github.com/kojix2/chatgpt-cli"
  url "https://github.com/kojix2/chatgpt-cli.git",
      tag: "v0.7.0",
      revision: "8884baebbefceb9d0dd1cbc70cb6460cb577b9cc"
  license "MIT"

  depends_on "crystal"
  depends_on "readline"
  depends_on "bat"

  def install
    system "make build release=1"
    bin.install "bin/chatgpt"
  end
end
