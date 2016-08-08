class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.7.0.tar.gz"
  version "0.7.0"
  sha256 "58cce903219777b5b62bc581298cc7998ce93d2d60925a5bbe9d011c1f4c84a4"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
