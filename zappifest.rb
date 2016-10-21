class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.12.0.tar.gz"
  version "0.12.0"
  sha256 "17b0380d8913fbbcad2277cf35a48ce08e3d931728c7aef0cfc701ba7bf2fa47"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
