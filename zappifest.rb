class Zappifest < Formula
  desc "Tool to generate Zapp plugin manifest"
  homepage "https://github.com/applicaster/zappifest"
  url "https://github.com/applicaster/zappifest/archive/0.3.2.tar.gz"
  version "0.3.2"
  sha256 "eab341b511b16edb71aee09d0d728a62646eb2575cf126232667d463d7c7a896"

  def install
    lib.install "lib/multipart.rb", "lib/network_helpers.rb"
    bin.install "bin/zappifest"
  end
end
