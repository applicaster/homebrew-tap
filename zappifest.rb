class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.3.1.tar.gz"
  version "0.3.1"
  sha256 "397f69d6fe903d7f6e92fab0c076e476e70006b2ed71619cb77ecf783f2f7789"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
