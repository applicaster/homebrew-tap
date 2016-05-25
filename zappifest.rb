class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.4.1.tar.gz"
  version "0.4.1"
  sha256 "bd341b9c9327fd6be6d2b39b2249639350954c5262bcf20079234111debb1c69"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
