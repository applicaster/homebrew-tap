class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.5.0.tar.gz"
  version "0.5.0"
  sha256 "6360a3f4ba95426ed84c463b4464360f0cc0fd088a5dd379a3d6450b0104b1e7"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
