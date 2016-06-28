class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.5.1.tar.gz"
  version "0.5.1"
  sha256 "c803bbab98920503aea8f70e5ffe2b9d7cbb03c9743de9947e9a3dc5a95403c6"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
