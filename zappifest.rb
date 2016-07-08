class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.6.1.tar.gz"
  version "0.6.1"
  sha256 "648f6635d24d7eee253d694836aac51e8ea983d41e674f3d0c642caabf51de68"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
