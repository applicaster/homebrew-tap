class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.3.0.tar.gz"
  version "0.3.0"
  sha256 "8a6410c57219fc1753913a7f00ee9f41d06172f26e268e89989de1581fbefd29"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
