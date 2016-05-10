class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.1.1.tar.gz"
  version "0.1.1"
  sha256 "f15d7f9f3b97fb53bf38bee2297d11858d4443d854f015789e8eb7d4d9429926"

  def install
    bin.install "zappifest"
  end
end
