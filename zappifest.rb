class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.4.0.tar.gz"
  version "0.4.0"
  sha256 "662e395d4b8777a8d1bb714e67c4978b3e78190013d5080551da040fd3f5fcf6"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
